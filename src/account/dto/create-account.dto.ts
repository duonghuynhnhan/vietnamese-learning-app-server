import { ApiProperty } from "@nestjs/swagger";
import { IsEmail, IsNotEmpty, IsNumberString, IsOptional, IsStrongPassword, MaxLength } from "class-validator";
import { IsDate, IsFullName } from "src/custom-validators";

export class CreateAccountDto {
  @ApiProperty({
    type: 'string',
    description: 'Input full name'
  })
  @IsNotEmpty()
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
    description: 'Input email'
  })
  @IsNotEmpty()
  @IsEmail()
  @MaxLength(255)
  email: string;

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
  @IsNotEmpty()
  @MaxLength(20)
  gender: string;

  @ApiProperty({
    type: 'string',
    description: 'Input nationality'
  })
  @IsNotEmpty()
  @MaxLength(255)
  nationality: string;

  @ApiProperty({
    type: 'string',
    description: 'Input password'
  })
  @IsNotEmpty()
  @IsStrongPassword()
  @MaxLength(255)
  password: string;
}
