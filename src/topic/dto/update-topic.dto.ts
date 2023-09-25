import { ApiProperty } from "@nestjs/swagger";
import { IsOptional, MaxLength } from "class-validator";

export class UpdateTopicDto {
  @ApiProperty({
    type: 'string',
    description: 'Input name',
  })
  @IsOptional()
  @MaxLength(255)
  name: string;

  @ApiProperty({
    type: 'string',
    description: 'Input avatar',
  })
  @IsOptional()
  @MaxLength(255)
  avatar: string;
}
