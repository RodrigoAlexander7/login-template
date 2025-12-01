import { Controller, Res, Req, Get, UseGuards } from "@nestjs/common";
import { AuthService } from "@/auth/auth.service";

import { AuthGuard } from "@nestjs/passport";
import { ConfigService } from "@nestjs/config";
import type {
  Request as ExpressRequest,
  Response as ExpressResponse,
} from "express";

interface GoogleProfile {
  name?: string;
  email?: string;
  image?: string;
  accessToken?: string;
  refreshToken?: string;
}

@Controller("auth") // all the routes under 'auth'
export class AuthController {
  constructor(
    private readonly authService: AuthService,
    private readonly configService: ConfigService,
  ) {}

  // Call auth/google and then redirect to the google strategy (defined on google.Strategy)
  // then the user is redirected to google login -> then is login we call the callback (defined on google.Strategy)
  @UseGuards(AuthGuard("google"))
  @Get("google")
  googleAuth() {
    return "Google Auth";
  }

  // Passport change the auth code with a token
  // So we call auth/google/callback and then call -> callbackOauthGoogle
  // here we use the guard that we register on passport (see jwt.strategy.ts)
  @UseGuards(AuthGuard("google"))
  @Get("google/callback")
  async googleAuthCallback(
    //req is comming from passport -> see google.strategy
    //this req is the one midified by passpor with the user info -> see google strategy.ts
    @Req() req: ExpressRequest & { user?: GoogleProfile },
    @Res() res: ExpressResponse,
  ) {
    const frontendUrl = this.configService.get<string>("frontendURL");

    try {
      const { accessToken } = await this.authService.callbackOauthGoogle(
        req.user ?? {},
      );

      // redirect to frontend with the token
      res.redirect(
        `${frontendUrl}/api/auth/google/callback?token=${accessToken}`,
      );
    } catch (error: any) {
      console.error("Error during Google auth callback:", error);
      res.redirect(
        `${frontendUrl}/auth/error?message=${error?.message ?? "unknown"}`,
      );
    }
  }
}
