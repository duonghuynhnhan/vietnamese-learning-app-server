import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty, MaxLength } from "class-validator";
import { IsLesonProgressStatus } from "src/custom-validators";

export class CreateLessonProgressDto {
  @ApiProperty({
    type: 'string',
    description: 'Input lesson Id',
  })
  @IsNotEmpty()
  @MaxLength(255)
  lessonId: string;

  @ApiProperty({
    type: 'string',
    description: 'Input status',
  })
  @IsNotEmpty()
  @MaxLength(255)
  @IsLesonProgressStatus()
  status: string;
}
