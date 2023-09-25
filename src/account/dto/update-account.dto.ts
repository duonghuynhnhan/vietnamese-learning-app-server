import { ApiProperty } from "@nestjs/swagger";
import { IsNumberString, IsOptional, IsStrongPassword, MaxLength } from "class-validator";
import { IsDate, IsFullName } from "src/custom-validators";

export class UpdateAccountDto {
  @ApiProperty({
    type: 'string',
    description: 'Input full name'
  })
  @IsOptional()
  @IsFullName()
  @MaxLength(255)
  fullName: string;

  @ApiProperty({
    type: 'string',
    description: 'Input phone'
  })
  @IsOptional()
  @IsNumberString()
  @MaxLength(15)
  phone: string;

  @ApiProperty({
    type: 'string',
    description: 'Input avatar'
  })
  @IsOptional()
  @MaxLength(255)
  avatar: string;

  @ApiProperty({
    type: 'string',
    description: 'Input dob'
  })
  @IsOptional()
  @IsDate()
  dob: string;

  @ApiProperty({
    type: 'string',
    description: 'Input gender'
  })
  @IsOptional()
  @MaxLength(20)
  gender: string;

  @ApiProperty({
    type: 'string',
    description: 'Input nationality'
  })
  @IsOptional()
  @MaxLength(255)
  nationality: string;

  @ApiProperty({
    type: 'string',
    description: 'Input password'
  })
  @IsOptional()
  @IsStrongPassword()
  @MaxLength(255)
  password: string;
}
