import { ApiProperty } from "@nestjs/swagger";
import { FileDto } from "src/file/dto";

export class LessonDto {
  @ApiProperty({
    type: 'string',
    description: 'This is type',
  })
  type: string;

  @ApiProperty({
    type: () => FileDto,
    description: 'This is attachment question',
  })
  attachmentQuestion: FileDto;

  @ApiProperty({
    type: 'string',
    description: 'This is question',
  })
  question: string;

  @ApiProperty({
    type: 'string',
    description: 'This is right answer',
  })
  rightAnswer: string;

  @ApiProperty({
    type: () => FileDto,
    description: 'This is attachment 0',
  })
  attachment0: FileDto;

  @ApiProperty({
    type: 'string',
    description: 'This is wrong answer 1',
  })
  wrongAnswer1: string;

  @ApiProperty({
    type: () => FileDto,
    description: 'This is attachment 1',
  })
  attachment1: FileDto;

  @ApiProperty({
    type: 'string',
    description: 'This is wrong answer 2',
  })
  wrongAnswer2: string;

  @ApiProperty({
    type: () => FileDto,
    description: 'This is attachment 2',
  })
  attachment2: FileDto;

  @ApiProperty({
    type: 'string',
    description: 'This is wrong answer 3',
  })
  wrongAnswer3: string;

  @ApiProperty({
    type: () => FileDto,
    description: 'This is attachment 3',
  })
  attachment3: FileDto;
}
