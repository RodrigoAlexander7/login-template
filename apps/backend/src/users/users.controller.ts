import { Controller, Get, Request, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';

// Here we use the guard that we register on passport (see jwt.strategy.ts)
// Req is comming from Passport -> See google.strategy
@Controller('users')
export class UsersController {
   // Get current user profile
   @Get('me')
   @UseGuards(AuthGuard('jwt'))
   getProfile(@Request() req) {
      return req.user;
   }
}
