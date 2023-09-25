import { ApiProperty } from "@nestjs/swagger";

export class CountryDto {
  @ApiProperty({
    type: 'string',
    description: 'This is id',
  })
  id: string;

  @ApiProperty({
    type: 'string',
    description: 'This is name',
  })
  name: string;

  @ApiProperty({
    type: 'string',
    description: 'This is English name',
  })
  nameEN: string;
}
