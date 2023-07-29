import { Controller, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiBearerAuth, ApiExtraModels, ApiTags } from '@nestjs/swagger';
import { AccountService } from './account.service';

@Controller('account')
@ApiTags('Account')
@ApiExtraModels()
@UseGuards(AuthGuard())
@ApiBearerAuth()
export class AccountController {
  constructor(
    private accountService: AccountService,
  ) { }

  // @Post()
  // @UseGuards(AuthGuard())
  // @ApiBearerAuth()
  // @ApiOperation({ summary: 'Tạo tài khoản' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'CREATE',
  //     type: 'object',
  //     $ref: getSchemaPath(AccountDto)
  //   },
  // })
  // async createAccount(@Body() createAccountDto: CreateAccountDto): Promise<AccountDto> {
  //   try {
  //     const { departmentId, username } = createAccountDto;
  //     const isExist = await this.accountService.getAccountByUsername(username);

  //     if (isExist) {
  //       throw new ApiError(400);
  //     }

  //     const password = this.configService.get('ACCOUNT_DEFAULT_PASSWORD');
  //     const department = await this.departmentService.getDepartmentById(+departmentId);

  //     if (!department) {
  //       throw new ApiError(400);
  //     }

  //     const account = await this.accountService.createAccount(createAccountDto, password);

  //     return plainToClass(GetAccountDto, await this.accountService.getAccountById(+account.id));
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }

  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Get()
  // @ApiOperation({ summary: 'Lấy danh sách account' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'GET ALL ACCOUNTS',
  //     type: 'array',
  //     items: { $ref: getSchemaPath(AccountDto) },
  //   },
  // })
  // async getAllAccounts(): Promise<AccountDto[]> {
  //   try {
  //     const data: AccountDto[] = [];
  //     const result = await this.accountService.getAllAccounts();

  //     for (const item of result) {
  //       const profilePictureId = item.profilePicture;

  //       const profilePicture = await this.fileService.getFileById(+profilePictureId);
  //       data.push({
  //         ...item,
  //         profilePicture,
  //       })
  //     }

  //     return data;
  //   } catch (error) {
  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Get('pagination')
  // @ApiOperation({ summary: 'Lấy danh sách account pagination' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'GET ALL ACCOUNTS PAGINATION',
  //     type: 'object',
  //     $ref: getSchemaPath(GetListAccountDto),
  //   },
  // })
  // async getAllAccountsPagination(@Query() query: QueryAccountDto): Promise<GetListAccountDto> {
  //   try {
  //     const { page, pageSize } = query;
  //     const skip = (page - 1) * pageSize;
  //     const take = pageSize;

  //     const data: AccountDto[] = [];
  //     const result = await this.accountService.getAllAccountsPagination(+skip, +take);
  //     const total = await this.accountService.getTotal();

  //     for (const item of result) {
  //       const profilePictureId = item.profilePicture;

  //       const profilePicture = await this.fileService.getFileById(+profilePictureId);
  //       data.push({
  //         ...item,
  //         profilePicture,
  //       })
  //     }

  //     return { data, total };
  //   } catch (error) {
  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Get('/username/:username/info')
  // @ApiOperation({ summary: 'Lấy thông tin một account bằng username' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'GET ACCOUNT BY USERNAME',
  //     type: 'object',
  //     $ref: getSchemaPath(AccountDto)
  //   },
  // })
  // async getAccountByUsername(@Param('username') username: string): Promise<AccountDto> {
  //   try {
  //     const account = await this.accountService.getAccountByUsername(username);

  //     if (!account) {
  //       throw new ApiError(404);
  //     }

  //     const profilePicture = await this.fileService.getFileById(+account.profilePicture);

  //     return plainToClass(AccountDto, { ...account, profilePicture });
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }

  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Get('/department/:id')
  // @ApiOperation({ summary: 'Lấy danh sách account của department' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'GET ACCOUNT BY DEPARTMENT ID',
  //     type: 'array',
  //     items: {
  //       $ref: getSchemaPath(AccountDto),
  //     },
  //   },
  // })
  // async getAccountOfDepartment(@Param('id') id: number): Promise<AccountDto[]> {
  //   try {
  //     const department = await this.departmentService.getDepartmentById(+id);

  //     if (!department) {
  //       throw new ApiError(404);
  //     }

  //     const data: AccountDto[] = [];
  //     const result = await this.accountService.getAccountOfDepartment(+id);

  //     for (const item of result) {
  //       const profilePictureId = item.profilePicture;

  //       const profilePicture = await this.fileService.getFileById(+profilePictureId);
  //       data.push({
  //         ...item,
  //         profilePicture,
  //       })
  //     }

  //     return data;
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }

  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Get('/id/:id/info')
  // @ApiOperation({ summary: 'Lấy thông tin một account bằng id' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'GET ACCOUNT BY ID',
  //     type: 'object',
  //     $ref: getSchemaPath(AccountDto)
  //   },
  // })
  // async getAccountById(@Param('id') id: number): Promise<AccountDto> {
  //   try {
  //     const account = await this.accountService.getAccountById(+id);

  //     if (!account) {
  //       throw new ApiError(404);
  //     }

  //     const profilePicture = await this.fileService.getFileById(+account.profilePicture);

  //     return plainToClass(AccountDto, { ...account, profilePicture });
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }

  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Get('/me/info')
  // @ApiOperation({ summary: 'Lấy thông tin account hiện tại' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'GET ACCOUNT',
  //     type: 'object',
  //     $ref: getSchemaPath(AccountDto)
  //   },
  // })
  // async getMe(@GetAccount() account: account): Promise<AccountDto> {
  //   try {
  //     const currentAccount = await this.accountService.getAccountById(+account.id);
  //     const profilePicture = await this.fileService.getFileById(+account.profilePicture);

  //     return plainToClass(AccountDto, { ...currentAccount, profilePicture });
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }

  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Get('/me/pic')
  // @ApiOperation({ summary: 'Lấy pic của account hiện tại' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'GET PIC',
  //     type: 'array',
  //     items: { $ref: getSchemaPath(GetPicDto) },
  //   }
  // })
  // async getMyPic(@GetAccount() account: account): Promise<pic[]> {
  //   try {
  //     return this.picService.getPicByAccountId(+account.id);
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }

  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Put('me/info')
  // @ApiOperation({ summary: 'Cập nhật thông tin account hiện tại' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'UPDATE ACCOUNT',
  //     type: 'object',
  //     $ref: getSchemaPath(AccountDto)
  //   },
  // })
  // async updateMyAccount(@GetAccount() account: account, @Body() updateAccountDto: UpdateAccountDto): Promise<AccountDto> {
  //   try {
  //     const profilePictureId = updateAccountDto.profilePicture;
  //     const profilePicture = await this.fileService.getFileById(+profilePictureId);

  //     if (!profilePicture) {
  //       throw new ApiError(400);
  //     }

  //     return plainToClass(AccountDto, this.accountService.updateAccount(+account.id, updateAccountDto));
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }

  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Put('/:username/password/reset')
  // @ApiOperation({ summary: 'Reset password một account' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'RESET PERSONNEL PASSWORD BY USERNAME',
  //     type: 'object',
  //     $ref: getSchemaPath(ApiSuccess)
  //   },
  // })
  // async resetPassword(@Param('username') username: string): Promise<ApiSuccess> {
  //   try {
  //     const account = await this.accountService.getAccountByUsername(username);

  //     if (!account) {
  //       throw new ApiError(404);
  //     }

  //     const updatePasswordDto: UpdatePasswordDto = { password: this.configService.get('ACCOUNT_DEFAULT_PASSWORD') };

  //     return this.accountService.updatePassword(+account.id, updatePasswordDto);
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }
  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Patch('/me/password')
  // @ApiOperation({ summary: 'Cập nhật password account hiện tại' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'UPDATE ACCOUNT PASSWORD',
  //     type: 'object',
  //     $ref: getSchemaPath(ApiSuccess)
  //   },
  // })
  // async updateMyPassword(@GetAccount() account: account, @Body() updatePasswordDto: UpdatePasswordDto): Promise<ApiSuccess> {
  //   try {
  //     return this.accountService.updatePassword(+account.id, updatePasswordDto);
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }

  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Patch('/:username/department')
  // @ApiOperation({ summary: 'Cập nhật department cho account' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'UPDATE ACCOUNT DEPARTMENT',
  //     type: 'object',
  //     $ref: getSchemaPath(ApiSuccess)
  //   },
  // })
  // async updateDepartment(@Param('username') username: string, @Body() updateDepartmentDto: UpdateAccountDepartmentDto): Promise<ApiSuccess> {
  //   try {
  //     const account = await this.accountService.getAccountByUsername(username);

  //     if (!account) {
  //       throw new ApiError(400);
  //     }

  //     const { departmentId } = updateDepartmentDto;
  //     const department = await this.departmentService.getDepartmentById(+departmentId);

  //     if (!department) {
  //       throw new ApiError(400);
  //     }

  //     return this.accountService.updateDepartment(+account.id, updateDepartmentDto);
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }

  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }

  // @Delete('/:username')
  // @ApiOperation({ summary: 'Xóa một account' })
  // @ApiOkResponse({
  //   schema: {
  //     title: 'DELETE ACCOUNT BY USERNAME',
  //     type: 'object',
  //     $ref: getSchemaPath(ApiSuccess)
  //   },
  // })
  // async deleteAccount(@Param('username') username: string): Promise<ApiSuccess> {
  //   try {
  //     const account = await this.accountService.getAccountByUsername(username);

  //     if (!account) {
  //       throw new ApiError(404);
  //     }

  //     return this.accountService.deleteAccount(+account.id);
  //   } catch (error) {
  //     if (error instanceof ApiError) {
  //       console.log(error);
  //       throw error;
  //     }

  //     console.log(error);
  //     throw new ApiError(500);
  //   }
  // }
}
