import {
  Injectable,
  NestInterceptor,
  ExecutionContext,
  CallHandler,
} from '@nestjs/common';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { parse as jsonParse, stringify as jsonStringify } from 'json-bigint';

@Injectable()
export class BigintInterceptor implements NestInterceptor {
  intercept(context: ExecutionContext, next: CallHandler): Observable<any> {
    return next.handle().pipe(
      map((data) => {
        return jsonParse(jsonStringify(data));
      }),
    );
  }
}
