import { registerDecorator, ValidationOptions } from 'class-validator';

export function IsName(validationOptions?: ValidationOptions) {
  return function (object: object, propertyName: string): void {
    registerDecorator({
      name: 'isName',
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      validator: {
        validate(value: any): boolean {
          if (typeof value !== 'string') {
            return false;
          }

          const regex = /^[a-zA-ZÀ-ỹ0-9-''&]+(\s[a-zA-ZÀ-ỹ0-9-''&]+)+$/;
          return regex.test(value);
        },

        defaultMessage(): string {
          return `${propertyName} must be name`;
        }
      },
    });
  };
}
