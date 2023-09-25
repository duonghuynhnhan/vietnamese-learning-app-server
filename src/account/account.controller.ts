import { Body, Controller, Get, Post, Put, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiBearerAuth, ApiExtraModels, ApiOkResponse, ApiOperation, ApiTags, getSchemaPath } from '@nestjs/swagger';
import { account } from '@prisma/client';
import { plainToClass } from 'class-transformer';
import { GetCurrentAccount } from 'src/auth/decorators';
import { ApiError } from 'src/api-responses';
import { FileService } from 'src/file/file.service';
import { FileDto } from 'src/file/dto';
import { CountryService } from 'src/country/country.service';
import { CountryDto } from 'src/country/dto';
import { AccountService } from './account.service';
import { AccountDto, CreateAccountDto, UpdateAccountDto } from './dto';

@Controller('account')
@ApiTags('Account')
@ApiExtraModels(AccountDto, UpdateAccountDto)
export class AccountController {
  constructor(
    private accountService: AccountService,
    private fileService: FileService,
    private countryService: CountryService,
  ) { }

  @Post()
  @ApiOperation({ summary: 'Đăng ký tài khoản' })
  @ApiOkResponse({
    schema: {
      title: 'SIGN UP',
      type: 'object',
      $ref: getSchemaPath(AccountDto),
    },
  })
  async signUpAccount(@Body() createAccountDto: CreateAccountDto): Promise<AccountDto> {
    try {
      const { email } = createAccountDto;
      const isExist = await this.accountService.getAccountByUsername(email);

      if (isExist) {
        throw new ApiError(400);
      }

      const account = await this.accountService.createAccount(createAccountDto);

      return plainToClass(AccountDto, await this.accountService.getAccountById(account.id));
    } catch (error) {
      if (error instanceof ApiError) {
        console.log(error);
        throw error;
      }

      console.log(error);
      throw new ApiError(500);
    }
  }

  @Get('/me/info')
  @UseGuards(AuthGuard())
  @ApiBearerAuth()
  @ApiOperation({ summary: 'Lấy thông tin account hiện tại' })
  @ApiOkResponse({
    schema: {
      title: 'GET CURRENT ACCOUNT',
      type: 'object',
      $ref: getSchemaPath(AccountDto)
    },
  })
  async getMe(@GetCurrentAccount() account: account): Promise<AccountDto> {
    try {
      const currentAccount = await this.accountService.getAccountById(account.id);
      let avatar;

      if (account.avatar) {
        avatar = plainToClass(FileDto, await this.fileService.getFileById(account.avatar));
      }

      const nationality = plainToClass(CountryDto, await this.countryService.getCountryById(account.countryId));

      return plainToClass(AccountDto, { ...currentAccount, avatar, nationality });
    } catch (error) {
      if (error instanceof ApiError) {
        console.log(error);
        throw error;
      }

      console.log(error);
      throw new ApiError(500);
    }
  }

  @Put('/me/info')
  @UseGuards(AuthGuard())
  @ApiBearerAuth()
  @ApiOperation({ summary: 'Cập nhật thông tin account hiện tại' })
  @ApiOkResponse({
    schema: {
      title: 'UPDATE CURRENT ACCOUNT',
      type: 'object',
      $ref: getSchemaPath(AccountDto)
    },
  })
  async updateCurrentAccount(@GetCurrentAccount() account: account, @Body() updateAccountDto: UpdateAccountDto): Promise<AccountDto> {
    try {
      const currentAccount = await this.accountService.getAccountById(account.id);

      if (updateAccountDto.avatar) {
        const avatar = plainToClass(FileDto, await this.fileService.getFileById(account.avatar));

        if (!avatar || !avatar.mimeType.startsWith('image/')) {
          throw new ApiError(400, 'Must input an image file');
        }
      }

      if (updateAccountDto.nationality) {
        const country = plainToClass(CountryDto, await this.countryService.getCountryById(account.countryId));

        if (!country) {
          throw new ApiError(404, 'Country not found');
        }
      }

      await this.accountService.updateAccountById(currentAccount.id, updateAccountDto);

      const updateAccount = await this.accountService.getAccountById(account.id);
      let avatar;

      if (account.avatar) {
        avatar = plainToClass(FileDto, await this.fileService.getFileById(updateAccount.avatar));
      }

      const nationality = plainToClass(CountryDto, await this.countryService.getCountryById(updateAccount.countryId));

      return plainToClass(AccountDto, { ...updateAccount, avatar, nationality });
    } catch (error) {
      if (error instanceof ApiError) {
        console.log(error);
        throw error;
      }

      console.log(error);
      throw new ApiError(500);
    }
  }
}
