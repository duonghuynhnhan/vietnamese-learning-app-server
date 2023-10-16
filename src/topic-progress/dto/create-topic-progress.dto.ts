import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, MaxLength } from "class-validator";

export class CreateTopicProgressDto {
  @ApiProperty({
    type: 'string',
    description: 'Input topic',
  })
  @IsNotEmpty()
  @MaxLength(255)
  topicId: string;
}
