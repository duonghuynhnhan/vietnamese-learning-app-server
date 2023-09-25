import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, MaxLength } from "class-validator";

export class CreateTopicDto {
  @ApiProperty({
    type: 'string',
    description: 'Input name',
  })
  @IsNotEmpty()
  @MaxLength(255)
  name: string;

  @ApiProperty({
    type: 'string',
    description: 'Input avatar',
  })
  @IsNotEmpty()
  @MaxLength(255)
  avatar: string;
}
