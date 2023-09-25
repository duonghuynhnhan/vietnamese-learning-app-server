import { registerDecorator, ValidationOptions } from 'class-validator';

export function IsDate(validationOptions?: ValidationOptions) {
  return function (object: object, propertyName: string): void {
    registerDecorator({
      name: 'IsDate',
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      validator: {
        validate(value: any) {
          if (typeof value !== 'string') {
            return false;
          }

          try {
            const date = new Date(value);
            const isoString = date.toISOString();
            return value === isoString;
          }
          catch (_e) {
            return false;
          }
        },

        defaultMessage(): string {
          return `${propertyName} must be a valid ISO String`;
        }
      },
    });
  };
}
