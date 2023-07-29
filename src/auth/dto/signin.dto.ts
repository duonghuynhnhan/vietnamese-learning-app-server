import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty } from 'class-validator';

export class SignInDto {
  @ApiProperty({ description: 'Must input username', type: 'string' })
  @IsNotEmpty()
  username: string;

  @ApiProperty({ description: 'Must input password', type: 'string' })
  @IsNotEmpty()
  password: string;
}
