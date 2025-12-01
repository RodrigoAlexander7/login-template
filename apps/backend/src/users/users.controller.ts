import { Controller, Get, Request, UseGuards } from "@nestjs/common";
import { AuthGuard } from "@nestjs/passport";
import type { Request as ExpressRequest } from "express";

interface RequestWithUser extends ExpressRequest {
  user?: { userId: string; email: string } | any;
}

@Controller("users")
export class UsersController {
  // Get current user profile
  @Get("me")
  @UseGuards(AuthGuard("jwt"))
  getProfile(@Request() req: RequestWithUser) {
    return req.user;
  }
}
