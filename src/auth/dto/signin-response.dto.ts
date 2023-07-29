import { ApiProperty } from '@nestjs/swagger';

export class SignInResponseDto {
  @ApiProperty({ description: 'This is access token', type: 'string' })
  accessToken: string;
}
