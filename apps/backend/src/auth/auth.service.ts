import { Injectable, UnauthorizedException } from "@nestjs/common";
import { JwtService } from "@nestjs/jwt";
import { UsersService } from "@/users/users.service";
import type { User } from "@generated/prisma/client";

interface GoogleProfile {
  name?: string;
  email?: string;
  image?: string;
  accessToken?: string;
  refreshToken?: string;
}

@Injectable()
export class AuthService {
  // dependences injection
  constructor(
    private readonly jwtService: JwtService,
    private readonly usersService: UsersService,
  ) {}

  // we don't use Google tokens; we create our own JWT
  async callbackOauthGoogle(
    profile: GoogleProfile,
  ): Promise<{ accessToken: string }> {
    const { email, name, image } = profile;
    console.log("EMAIL RECIBIDO:", email);
    if (!email) throw new UnauthorizedException("Email not found from Google");

    let user: User | null = await this.usersService.findByEmail(email);

    if (!user) {
      user = await this.usersService.create({
        name,
        email,
        image,
      });
    }

    const payload = { sub: user.id, email: user.email };
    const jwt = this.jwtService.sign(payload);
    return { accessToken: jwt };
  }
}
