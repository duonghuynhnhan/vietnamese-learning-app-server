import { SetMetadata } from '@nestjs/common';
import { AccountRole } from 'src/account/enum';

export const ROLE_KEY = 'role';
export const Role = (...role: AccountRole[]) => SetMetadata(ROLE_KEY, role);