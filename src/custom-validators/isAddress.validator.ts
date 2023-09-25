import { registerDecorator, ValidationOptions } from 'class-validator';

export function IsAddress(validationOptions?: ValidationOptions) {
  return function (object: object, propertyName: string): void {
    registerDecorator({
      name: 'isAddress',
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      validator: {
        validate(value: any): boolean {
          if (typeof value !== 'string') {
            return false;
          }

          const regex = /^[0-9a-zA-ZÀ-ỹ\s.,/-]+(\s[0-9a-zA-ZÀ-ỹ\s.,/-]+)+$/;
          return regex.test(value);
        },

        defaultMessage(): string {
          return `${propertyName} must be address`;
        },
      },
    });
  };
}
