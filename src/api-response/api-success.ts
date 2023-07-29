import { ApiProperty } from "@nestjs/swagger";

export class ApiSuccess {
  @ApiProperty()
  statusCode: number;

  @ApiProperty()
  message: string;
}