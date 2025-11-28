import { ExtractJwt, Strategy } from 'passport-jwt';
import { Injectable } from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { ConfigService } from '@nestjs/config';

interface RequestWithCookies extends Request {
   cookies: Record<string, string>;
}

// function to extract the token from cookies
const cookieExtractor = (req: RequestWithCookies) => {
   if (req && req.cookies) {
      return req.cookies['access_token'];
   }
   return null;
}


// This register the jwt guard on passport
@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
   constructor(
      private readonly configService: ConfigService,
   ) {
      super({
         // Accept token either from cookie (HttpOnly) or from Authorization header
         jwtFromRequest: ExtractJwt.fromExtractors([
            cookieExtractor,
            ExtractJwt.fromAuthHeaderAsBearerToken(),
         ]),
         ignoreExpiration: false,
         secretOrKey: configService.get<string>('authSecret'), // our secret key
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
