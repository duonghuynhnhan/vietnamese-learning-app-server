import { Body, Controller, Post } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import * as bcrypt from 'bcrypt';
import { ApiError } from 'src/api-responses';
import { AccountService } from 'src/account/account.service';
import { JwtPayload } from './interface';
import { SignInDto, SignInResponseDto } from './dto';

@Controller('auth')
@ApiTags('Authentication')
@ApiExtraModels(SignInDto, SignInResponseDto)
export class AuthController {
  constructor(
    private jwtService: JwtService,
    private accountService: AccountService,
  ) { }

  @Post('/signin')
  @ApiOperation({ summary: 'Đăng nhập' })
  @ApiOkResponse({
    schema: {
      title: 'SIGN IN',
      type: 'object',
      $ref: getSchemaPath(SignInResponseDto)
    },
  })
  async signIn(@Body() signInDto: SignInDto): Promise<SignInResponseDto> {
    try {
      const { username, password } = signInDto;
      const account = await this.accountService.getAccountByUsername(username);

      if (account && (await bcrypt.compare(password, account.password))) {
        const payload: JwtPayload = { id: account.id, username: account.username, role: account.role };
        const accessToken = await this.jwtService.sign(payload);

        return { accessToken };
      } else {
        throw new ApiError(401);
      }
    } catch (error) {
      if (error instanceof ApiError) {
        console.log(error);
        throw error;
      }

      console.log(error);
      throw new ApiError(500);
    }
  }
}
