import { Injectable } from '@nestjs/common';
import { file } from '@prisma/client';
import * as lodash from 'lodash';
import { join } from 'path';
import * as fs from 'fs';
import { PrismaService } from 'prisma/prisma.service';
import { ApiError, ApiSuccess } from 'src/api-responses';
import { UpdateFileDto } from './dto';

@Injectable()
export class FileService {
  constructor(
    private prismaService: PrismaService,
  ) { }

  uploadFile(file: Express.Multer.File): Promise<file> {
    const createdAt = new Date().toISOString();

    const url = lodash.last(file.path.split('public'));

    return this.prismaService.file.create({
      data: {
        fieldName: file.fieldname,
        originalName: file.originalname,
        encoding: file.encoding,
        mimeType: file.mimetype,
        fileName: file.filename,
        url,
        size: file.size,
        createdAt,
      },
    });
  }

  getFileById(id: string): Promise<file> {
    return this.prismaService.file.findUnique({
      where: {
        id,
      },
    });
  }

  async updateFileById(id: string, updateFileDto: UpdateFileDto): Promise<ApiSuccess> {
    await this.prismaService.file.update({
      where: {
        id
      },
      data: {
        objectId: updateFileDto.objectId,
        objectType: updateFileDto.objectType,
      },
    });

    return { statusCode: 200, message: 'Update file succesfully' };
  }

  async deleteFile(id: string, file: file): Promise<ApiSuccess> {
    const filePath = join(__dirname, '../..', 'public', file.url);

    fs.unlink(filePath, async (error) => {
      if (error) {
        throw new ApiError(500);
      }

      await this.prismaService.file.delete({
        where: {
          id,
        },
      });
    });

    return { statusCode: 200, message: 'Delete file succesfully' };
  }
}
