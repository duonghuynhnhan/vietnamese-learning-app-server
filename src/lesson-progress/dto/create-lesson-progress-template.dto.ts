import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, MaxLength } from "class-validator";
import { IsLesonProgressStatus } from "src/custom-validators";

export class CreateLessonProgressTemplateDto {
  @ApiProperty({
    type: 'string',
    description: 'Input lesson Id',
  })
  @IsNotEmpty()
  @MaxLength(255)
  lessonId: string;

  @ApiProperty({
    type: 'string',
    description: 'Input account Id',
  })
  @IsNotEmpty()
  @MaxLength(255)
  accountId: string;

  @ApiProperty({
    type: 'string',
    description: 'Input account Id',
  })
  @IsNotEmpty()
  @MaxLength(255)
  topicId: string;

  @ApiProperty({
    type: 'string',
    description: 'Input status',
  })
  @IsNotEmpty()
  @MaxLength(255)
  @IsLesonProgressStatus()
  status: string;
}
