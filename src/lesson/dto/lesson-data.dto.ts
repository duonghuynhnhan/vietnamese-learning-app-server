import { ApiProperty } from "@nestjs/swagger";
import { LessonProgressDto } from "src/lesson-progress/dto";

export class LessonDataDto {
  @ApiProperty({
    type: () => [LessonProgressDto],
    description: 'This is learned lessons',
  })
  learnedLessons: LessonProgressDto[];

  @ApiProperty({
    type: () => [LessonProgressDto],
    description: 'This is unlearned lessons',
  })
  unlearnedLessons: LessonProgressDto[];
}
