import { ApiProperty } from "@nestjs/swagger";
import { LessonDto } from "src/lesson/dto";

export class LessonProgressDto {
  @ApiProperty({
    type: () => LessonDto,
    description: 'This is lesson'
  })
  lesson: LessonDto;

  @ApiProperty({
    type: 'string',
    description: 'This is status'
  })
  status: string;

  @ApiProperty({
    type: 'string',
    description: 'This is last modify at'
  })
  lastModifiedAt: string;
}
