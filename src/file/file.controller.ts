import { Body, Controller, Delete, Get, HttpStatus, Param, ParseFilePipeBuilder, Post, Put, UploadedFile, UploadedFiles, UseGuards, UseInterceptors } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { FileInterceptor, FilesInterceptor } from '@nestjs/platform-express';
import { plainToClass } from 'class-transformer';
import { ApiBearerAuth, ApiBody, ApiConsumes, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { file } from '@prisma/client';
import { ApiError, ApiSuccess } from 'src/api-responses';
import { FileService } from './file.service';
import { storage } from './config';
import { FileDto, UpdateFileDto, UploadFileDto } from './dto';

@Controller('file')
@ApiTags('File')
@ApiExtraModels(UploadFileDto, FileDto, UpdateFileDto, ApiSuccess)
export class FileController {
  constructor(
    private fileService: FileService,
  ) { }

  @Post('/upload/single')
  @ApiOperation({ summary: 'Upload một file' })
  @ApiOkResponse({
    schema: {
      title: 'UPLOAD NEW FILE',
      type: 'object',
      $ref: getSchemaPath(FileDto)
    },
  })
  @ApiConsumes('multipart/form-data')
  @ApiBody({
    schema: {
      title: 'UPLOAD FILE',
      type: 'object',
      $ref: getSchemaPath(UploadFileDto),
    },
  })
  @UseInterceptors(FileInterceptor('file', {
    storage,
  }))
  async uploadSingleFile(@UploadedFile(
    new ParseFilePipeBuilder()
      .addMaxSizeValidator({
        maxSize: 1000000000
      })
      .build({
        errorHttpStatusCode: HttpStatus.UNPROCESSABLE_ENTITY
      }),
  ) file: Express.Multer.File): Promise<FileDto> {
    try {
      return plainToClass(FileDto, await this.fileService.uploadFile(file));
    }
    catch (error) {
      console.log(error);
      throw new ApiError(500);
    }
  }

  @Post('/upload/multiple')
  @ApiOperation({ summary: 'Upload nhiều file' })
  @ApiOkResponse({
    schema: {
      title: 'UPLOAD NEW FILES',
      type: 'array',
      items: { $ref: getSchemaPath(FileDto) },
    },
  })
  @ApiConsumes('multipart/form-data')
  @ApiBody({
    schema: {
      type: 'object',
      properties: {
        files: {
          type: 'array',
          items: {
            type: 'string',
            format: 'binary',
          },
        },
      },
    },
  })
  @UseInterceptors(FilesInterceptor('files', 100, {
    storage,
  }))
  async uploadMultipleFiles(@UploadedFiles() files: Array<Express.Multer.File>): Promise<FileDto[]> {
    try {
      const fileList: FileDto[] = [];

      for (const file of files) {
        fileList.push(plainToClass(FileDto, await this.fileService.uploadFile(file)));
      }

      return fileList;
    }
    catch (error) {
      console.log(error);
      throw new ApiError(500);
    }
  }

  @Get('/:id')
  @UseGuards(AuthGuard())
  @ApiBearerAuth()
  @ApiOperation({ summary: 'Lấy thông tin một file' })
  @ApiOkResponse({
    schema: {
      title: 'GET A FILE',
      type: 'object',
      $ref: getSchemaPath(FileDto)
    },
  })
  async getFileById(@Param('id') id: string): Promise<file> {
    try {
      const file = await this.fileService.getFileById(id);

      if (!file) {
        throw new ApiError(404);
      }

      return file;
    }
    catch (error) {
      if (error instanceof ApiError) {
        console.log(error);
        throw error;
      }

      console.log(error);
      throw new ApiError(500);
    }
  }

  @Put('/:id')
  @UseGuards(AuthGuard())
  @ApiBearerAuth()
  @ApiOperation({ summary: 'Cập nhật thông tin một file' })
  @ApiOkResponse({
    schema: {
      title: 'UPDATE A FILE',
      type: 'object',
      $ref: getSchemaPath(ApiSuccess)
    },
  })
  async updateFileById(@Param('id') id: string, @Body() updateFileDto: UpdateFileDto): Promise<ApiSuccess> {
    try {
      const file = await this.fileService.getFileById(id);

      if (!file) {
        throw new ApiError(404);
      }

      return this.fileService.updateFileById(id, updateFileDto);
    }
    catch (error) {
      if (error instanceof ApiError) {
        console.log(error);
        throw error;
      }

      console.log(error);
      throw new ApiError(500);
    }
  }

  @Delete('/:id')
  @ApiOperation({ summary: 'Xóa một file' })
  @ApiOkResponse({
    schema: {
      title: 'DELETE A FILE',
      type: 'object',
      $ref: getSchemaPath(ApiSuccess)
    },
  })
  async deleteFileById(@Param('id') id: string): Promise<ApiSuccess> {
    try {
      const file = await this.fileService.getFileById(id);

      if (!file) {
        throw new ApiError(404);
      }

      return this.fileService.deleteFile(id, file);
    }
    catch (error) {
      if (error instanceof ApiError) {
        console.log(error);
        throw error;
      }

      console.log(error);
      throw new ApiError(500);
    }
  }
}
