import { ApiProperty } from "@nestjs/swagger";
import { IsNotEmpty } from "class-validator";

export class UpdateFileDto {
  @ApiProperty({ type: "string", description: "This is object's id" })
  @IsNotEmpty()
  objectId: string;

  @ApiProperty({ type: "string", description: "This is object's type" })
  @IsNotEmpty()
  objectType: string;
}