import { ApiProperty } from "@nestjs/swagger";
import { IsOptional, MaxLength } from "class-validator";

export class UpdateLessonDto {
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

  @ApiProperty({
    type: 'string',
    description: 'Input wrong answer 1',
  })
  @IsOptional()
  @MaxLength(255)
  wrongAnswer1: string;

  @ApiProperty({
    type: 'string',
    description: 'Input wrong answer 2',
  })
  @IsOptional()
  @MaxLength(255)
  wrongAnswer2: string;

  @ApiProperty({
    type: 'string',
    description: 'Input wrong answer 3',
  })
  @IsOptional()
  @MaxLength(255)
  wrongAnswer3: string;
}