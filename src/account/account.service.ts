import { Injectable } from '@nestjs/common';
import { account } from '@prisma/client';
// import * as bcrypt from 'bcrypt';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class AccountService {
  constructor(
    private readonly prismaService: PrismaService,
  ) { }

  // async createAccount(createAccountDto: CreateAccountDto): Promise<account> {
  //   const salt = await bcrypt.genSalt();
  //   const hashedPassword = await bcrypt.hash(password, salt);
  //   const createdAt = new Date().toISOString();

  //   return this.prismaService.account.create({
  //     data: {
  //       username: createAccountDto.username,
  //       fullName: createAccountDto.fullName,
  //       dob: createAccountDto.dob,
  //       gender: createAccountDto.gender,
  //       idNo: createAccountDto.idNo,
  //       issuedAt: createAccountDto.issuedAt,
  //       issuedBy: createAccountDto.issuedBy,
  //       profilePicture: 1,
  //       email: createAccountDto.email,
  //       phoneNumber: createAccountDto.phoneNumber,
  //       address: createAccountDto.address,
  //       password: hashedPassword,
  //       role: 'Accounting',
  //       createdAt,
  //       department: { connect: { id: +createAccountDto.departmentId } },
  //     },
  //   });
  // }

  // getTotal(): Promise<number> {
  //   return this.prismaService.account.count({
  //     where: {
  //       deletedAt: null,
  //     },
  //   });
  // }

  // getAllAccountsPagination(skip: number, take: number): Promise<account[]> {
  //   return this.prismaService.account.findMany({
  //     where: {
  //       deletedAt: null,
  //     },
  //     include: {
  //       department: true,
  //     },
  //     skip,
  //     take,
  //   });
  // }

  // getAllAccounts(): Promise<account[]> {
  //   return this.prismaService.account.findMany({
  //     where: {
  //       deletedAt: null,
  //     },
  //     include: {
  //       department: {
  //         include: {
  //           accounts: false,
  //         },
  //       },
  //     },
  //   });
  // }

  // getAccountById(id: number): Promise<account> {
  //   return this.prismaService.account.findUnique({
  //     where: {
  //       id,
  //       deletedAt: null,
  //     },
  //     include: {
  //       department: {
  //         include: {
  //           accounts: false,
  //         },
  //       },
  //     },
  //   });
  // }

  getAccountByUsername(username: string): Promise<account> {
    return this.prismaService.account.findUnique({
      where: {
        username,
        deletedAt: null,
      },
    });
  }


  // async updateAccount(id: number, updateAccountDto: UpdateAccountDto): Promise<account> {
  //   const updatedAt = new Date().toISOString();

  //   return this.prismaService.account.update({
  //     where: { id },
  //     data: {
  //       fullName: updateAccountDto?.fullName,
  //       dob: updateAccountDto?.dob,
  //       gender: updateAccountDto?.gender,
  //       idNo: updateAccountDto?.idNo,
  //       issuedAt: updateAccountDto?.issuedAt,
  //       issuedBy: updateAccountDto?.issuedBy,
  //       email: updateAccountDto?.email,
  //       phoneNumber: updateAccountDto?.phoneNumber,
  //       address: updateAccountDto?.address,
  //       profilePicture: updateAccountDto?.profilePicture,
  //       deletedAt: null,
  //       updatedAt,
  //     }
  //   });
  // }

  // async updatePassword(id: number, updatePasswordDto: UpdatePasswordDto): Promise<ApiSuccess> {
  //   const { password } = updatePasswordDto;
  //   const salt = await bcrypt.genSalt();
  //   const hashedPassword = await bcrypt.hash(password, salt);
  //   const updatedAt = new Date().toISOString();


  //   await this.prismaService.account.update({
  //     where: { id },
  //     data: {
  //       password: hashedPassword,
  //       deletedAt: null,
  //       updatedAt,
  //     }
  //   });

  //   return { statusCode: 200, message: 'Update password successfully' };
  // }

  // async deleteAccount(id: number): Promise<ApiSuccess> {
  //   const deletedAt = new Date().toISOString();

  //   await this.prismaService.account.update({
  //     where: { id },
  //     data: {
  //       deletedAt,
  //     }
  //   });

  //   return { statusCode: 200, message: 'Delete personnel successfully' };
  // }
}
