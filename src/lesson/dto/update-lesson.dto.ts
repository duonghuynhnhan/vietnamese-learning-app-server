import { ApiProperty } from "@nestjs/swagger";
import { IsOptional, MaxLength } from "class-validator";
import { IsLessonType } from "src/custom-validators";

export class UpdateLessonDto {
  @ApiProperty({
    type: 'string',
    description: 'Input type',
  })
  @IsOptional()
  @IsLessonType()
  @MaxLength(255)
  type: string;

  @ApiProperty({
    type: 'string',
    description: 'Input attachment question',
  })
  @IsOptional()
  @MaxLength(255)
  attachmentQuestion: string;

  @ApiProperty({
    type: 'string',
    description: 'Input question',
  })
  @IsOptional()
  @MaxLength(255)
  question: string;

  @ApiProperty({
    type: 'string',
    description: 'Input right answer',
  })
  @IsOptional()
  @MaxLength(255)
  rightAnswer: string;

  // @ApiProperty({
  //   type: 'string',
  //   description: 'Input attachment 0',
  // })
  // @IsOptional()
  // @MaxLength(255)
  // attachment0: string;

  @ApiProperty({
    type: 'string',
    description: 'Input wrong answer 1',
  })
  @IsOptional()
  @MaxLength(255)
  wrongAnswer1: string;

  // @ApiProperty({
  //   type: 'string',
  //   description: 'Input attachment 1',
  // })
  // @IsOptional()
  // @MaxLength(255)
  // attachment1: string;

  @ApiProperty({
    type: 'string',
    description: 'Input wrong answer 2',
  })
  @IsOptional()
  @MaxLength(255)
  wrongAnswer2: string;

  // @ApiProperty({
  //   type: 'string',
  //   description: 'Input attachment 2',
  // })
  // @IsOptional()
  // @MaxLength(255)
  // attachment2: string;

  @ApiProperty({
    type: 'string',
    description: 'Input wrong answer 3',
  })
  @IsOptional()
  @MaxLength(255)
  wrongAnswer3: string;

  // @ApiProperty({
  //   type: 'string',
  //   description: 'Input attachment 3',
  // })
  // @IsOptional()
  // @MaxLength(255)
  // attachment3: string;

  @ApiProperty({
    type: 'string',
    description: 'Input topic id',
  })
  @IsOptional()
  @MaxLength(255)
  topicId: string;
}