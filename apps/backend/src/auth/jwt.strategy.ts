import { ExtractJwt, Strategy } from 'passport-jwt';
import { Injectable } from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { ConfigService } from '@nestjs/config';

// This register the jwt guard on passport
@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
   constructor(
      private readonly configService: ConfigService,
   ) {
      super({
         jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
         ignoreExpiration: false,
         secretOrKey: configService.get<string>('AUTH_SECRET'), // our secret key
      });
   }

   // when somethig comes to validate pasport use the settings defined on constructor
   // then validate the jwt, if is valid call validate
   // validate return whatever you want
   async validate(payload: any) {
      // payload is the content of the jwt
      return { userId: payload.sub, email: payload.email };
   }
}
