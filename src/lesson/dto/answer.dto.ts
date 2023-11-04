import { ApiProperty } from "@nestjs/swagger";
import { FileDto } from "src/file/dto";

export class AnswerDto {
  @ApiProperty({
    type: 'string',
    description: 'This is answer',
  })
  answer: string;

  @ApiProperty({
    type: () => FileDto,
    description: 'This is attachment',
    nullable: true,
  })
  attachment: FileDto;

  @ApiProperty({
    type: 'boolean',
    description: 'This is isCorrect',
  })
  isCorrect: boolean;
}
