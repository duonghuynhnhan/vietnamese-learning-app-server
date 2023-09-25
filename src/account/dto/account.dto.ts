import { ApiProperty } from "@nestjs/swagger";
import { CountryDto } from "src/country/dto";
import { FileDto } from "src/file/dto";

export class AccountDto {
  @ApiProperty({
    type: 'string',
    description: 'This is id'
  })
  id: string;

  @ApiProperty({
    type: 'string',
    description: 'This is full name'
  })
  fullName: string;

  @ApiProperty({
    type: 'string',
    description: 'This is phone'
  })
  phone: string;

  @ApiProperty({
    type: 'string',
    description: 'This is email'
  })
  email: string;

  @ApiProperty({
    type: () => FileDto,
    description: 'This is avatar'
  })
  avatar: FileDto;

  @ApiProperty({
    type: 'string',
    description: 'This is dob'
  })
  dob: string;

  @ApiProperty({
    type: 'string',
    description: 'This is gender'
  })
  gender: string;

  @ApiProperty({
    type: () => CountryDto,
    description: 'This is nationality'
  })
  nationality: CountryDto;

  @ApiProperty({
    type: 'string',
    description: 'This is username'
  })
  username: string;

  @ApiProperty({
    type: 'string',
    description: 'This is password'
  })
  password: string;
}
