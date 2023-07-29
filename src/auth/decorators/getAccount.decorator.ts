import { ExecutionContext, createParamDecorator } from "@nestjs/common";
import { account } from "@prisma/client";

export const GetAccount = createParamDecorator(
  (_data, ctx: ExecutionContext): account => {
    const req = ctx.switchToHttp().getRequest();
    return req.user;
  }
);
