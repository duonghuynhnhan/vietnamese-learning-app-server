import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, MaxLength } from "class-validator";

export class CreateLessonDto {
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

  @ApiProperty({
    type: 'string',
    description: 'Input question',
  })
  @IsNotEmpty()
  @MaxLength(255)
  question: string;

  @ApiProperty({
    type: 'string',
    description: 'Input right answer',
  })
  @IsNotEmpty()
  @MaxLength(255)
  rightAnswer: string;

  @ApiProperty({
    type: 'string',
    description: 'Input wrong answer 1',
  })
  @IsNotEmpty()
  @MaxLength(255)
  wrongAnswer1: string;

  @ApiProperty({
    type: 'string',
    description: 'Input wrong answer 2',
  })
  @IsNotEmpty()
  @MaxLength(255)
  wrongAnswer2: string;

  @ApiProperty({
    type: 'string',
    description: 'Input wrong answer 3',
  })
  @IsNotEmpty()
  @MaxLength(255)
  wrongAnswer3: string;

  @ApiProperty({
    type: 'string',
    description: 'Input topic id',
  })
  @IsNotEmpty()
  @MaxLength(255)
  topicId: string;
}