import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, MaxLength } from "class-validator";

export class CreateTopicProgressTemplateDto {
  @ApiProperty({
    type: 'string',
    description: 'Input topic',
  })
  @IsNotEmpty()
  @MaxLength(255)
  topicId: string;

  @ApiProperty({
    type: 'string',
    description: 'Input account',
  })
  @IsNotEmpty()
  @MaxLength(255)
  accountId: string;
}
