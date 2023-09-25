import { Injectable, CanActivate, ExecutionContext } from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import jwtDecode from 'jwt-decode';
import { AccountRole } from 'src/account/enum';
import { ROLE_KEY } from '../decorators';

@Injectable()
export class RoleGuard implements CanActivate {
  constructor(private reflector: Reflector) { }

  canActivate(context: ExecutionContext): boolean {
    try {
      const requiredRoles = this.reflector.getAllAndOverride<AccountRole[]>(ROLE_KEY, [
        context.getHandler(),
        context.getClass(),
      ]);

      if (!requiredRoles || requiredRoles.length === 0) {
        return true;
      }

      const data = context.switchToHttp().getRequest()
      const authHeaderIndex = data.rawHeaders.findIndex((header: string) => header.toLowerCase() === 'authorization');

      let token = null;
      if (authHeaderIndex !== -1) {
        const authHeaderValue = data.rawHeaders[authHeaderIndex + 1];
        const [, tokenValue] = authHeaderValue.split(' ');
        token = tokenValue;
      }

      const decodedToken: { role: string, } = jwtDecode(token);
      return requiredRoles.includes(AccountRole[decodedToken.role]);
    } catch (error) {
      return false;
    }
  }
}