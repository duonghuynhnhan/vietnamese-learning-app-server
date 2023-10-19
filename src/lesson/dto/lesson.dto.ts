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
    nullable: true,
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

  // @ApiProperty({
  //   type: () => FileDto,
  //   description: 'This is attachment 0',
  //   nullable: true,
  // })
  // attachment0: FileDto;

  @ApiProperty({
    type: 'string',
    description: 'This is wrong answer 1',
  })
  wrongAnswer1: string;

  // @ApiProperty({
  //   type: () => FileDto,
  //   description: 'This is attachment 1',
  //   nullable: true,
  // })
  // attachment1: FileDto;

  @ApiProperty({
    type: 'string',
    description: 'This is wrong answer 2',
  })
  wrongAnswer2: string;

  // @ApiProperty({
  //   type: () => FileDto,
  //   description: 'This is attachment 2',
  //   nullable: true,
  // })
  // attachment2: FileDto;

  @ApiProperty({
    type: 'string',
    description: 'This is wrong answer 3',
  })
  wrongAnswer3: string;

  // @ApiProperty({
  //   type: () => FileDto,
  //   description: 'This is attachment 3',
  //   nullable: true,
  // })
  // attachment3: FileDto;
}
