import { registerDecorator, ValidationOptions } from 'class-validator';

export function IsFullName(validationOptions?: ValidationOptions) {
  return function (object: object, propertyName: string): void {
    registerDecorator({
      name: 'isFullName',
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      validator: {
        validate(value: any): boolean {
          if (typeof value !== 'string') {
            return false;
          }

          const regex = /^[a-zA-ZÀ-ỹ-'']+(\s[a-zA-ZÀ-ỹ-'']+)+$/;
          return regex.test(value);
        },

        defaultMessage(): string {
          return `${propertyName} must be name`;
        }
      },
    });
  };
}
