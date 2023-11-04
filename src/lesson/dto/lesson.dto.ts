import { ApiProperty } from "@nestjs/swagger";
import { FileDto } from "src/file/dto";
import { AnswerDto } from "./answer.dto";

export class LessonDto {
  @ApiProperty({
    type: 'string',
    description: 'This is id',
  })
  id: string;

  @ApiProperty({
    type: 'string',
    description: 'This is type',
  })
  type: string;

  @ApiProperty({
    type: () => FileDto,
    description: 'This is attachment question',
    nullable: true,
  })
  attachmentQuestion: FileDto;

  @ApiProperty({
    type: 'string',
    description: 'This is question',
  })
  question: string;

  @ApiProperty({
    type: () => [AnswerDto],
    description: 'This is list of answers',
  })
  answers: AnswerDto[];
}
