import { ApiProperty } from "@nestjs/swagger";
import { FileDto } from "src/file/dto";

export class LessonDto {
  @ApiProperty({
    type: 'string',
    description: 'This is name',
  })
  name: string;

  @ApiProperty({
    type: () => FileDto,
    description: 'This is avatar',
  })
  avatar: FileDto;

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
    type: 'string',
    description: 'This is wrong answer 1',
  })
  wrongAnswer1: string;

  @ApiProperty({
    type: 'string',
    description: 'This is wrong answer 2',
  })
  wrongAnswer2: string;

  @ApiProperty({
    type: 'string',
    description: 'This is wrong answer 3',
  })
  wrongAnswer3: string;
}
