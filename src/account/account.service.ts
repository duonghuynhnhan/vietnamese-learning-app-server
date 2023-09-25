import { Injectable } from '@nestjs/common';
import { account } from '@prisma/client';
import * as bcrypt from 'bcrypt';
import { PrismaService } from 'prisma/prisma.service';
import { CreateAccountDto, UpdateAccountDto } from './dto';
import { AccountRole } from './enum';
import { ApiSuccess } from 'src/api-responses';

@Injectable()
export class AccountService {
  constructor(
    private readonly prismaService: PrismaService,
  ) { }

  async createAccount(createAccountDto: CreateAccountDto): Promise<account> {
    const salt = await bcrypt.genSalt();
    const hashedPassword = await bcrypt.hash(createAccountDto.password, salt);
    const createdAt = new Date().toISOString();

    return this.prismaService.account.create({
      data: {
        username: createAccountDto.email,
        fullName: createAccountDto.fullName,
        dob: createAccountDto.dob,
        gender: createAccountDto.gender,
        email: createAccountDto.email,
        phone: createAccountDto.phone,
        avatar: createAccountDto.avatar,
        password: hashedPassword,
        role: AccountRole.User,
        createdAt,
        nationality: {
          connect: {
            id: createAccountDto.nationality,
          },
        },
      },
    });
  }

  getAccountById(id: string): Promise<account> {
    return this.prismaService.account.findUnique({
      where: {
        id,
        deletedAt: null,
      },
    });
  }

  getAccountByUsername(username: string): Promise<account> {
    return this.prismaService.account.findUnique({
      where: {
        username,
        deletedAt: null,
      },
    });
  }


  async updateAccountById(id: string, updateAccountDto: UpdateAccountDto): Promise<account> {
    const updatedAt = new Date().toISOString();

    const { password, nationality } = updateAccountDto;
    if (password) {
      const salt = await bcrypt.genSalt();
      const hashedPassword = await bcrypt.hash(password, salt);

      await this.prismaService.account.update({
        where: {
          id
        },
        data: {
          password: hashedPassword,
          updatedAt,
        }
      });
    }

    if (nationality) {
      await this.prismaService.account.update({
        where: {
          id
        },
        data: {
          countryId: nationality,
          updatedAt,
        }
      });
    }

    return this.prismaService.account.update({
      where: {
        id
      },
      data: {
        fullName: updateAccountDto?.fullName,
        dob: updateAccountDto?.dob,
        gender: updateAccountDto?.gender,
        phone: updateAccountDto?.phone,
        avatar: updateAccountDto?.avatar,
        updatedAt,
      }
    });
  }

  async deleteAccountById(id: string): Promise<ApiSuccess> {
    const deletedAt = new Date().toISOString();

    await this.prismaService.account.update({
      where: {
        id
      },
      data: {
        deletedAt,
      }
    });

    return { statusCode: 200, message: 'Delete personnel successfully' };
  }
}
