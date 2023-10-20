import { registerDecorator, ValidationOptions } from 'class-validator';
import { TopicProgressStatus } from 'src/topic-progress/enum';

export function IsTopicProgressStatus(validationOptions?: ValidationOptions) {
  return function (object: object, propertyName: string): void {
    registerDecorator({
      name: 'isTopicProgressStatus',
      target: object.constructor,
      propertyName: propertyName,
      options: validationOptions,
      validator: {
        validate(value: any): boolean {
          const type = Object.values(TopicProgressStatus);

          return type.includes(value);
        },

        defaultMessage(): string {
          return `${propertyName} must be topic progress status`;
        },
      },
    });
  };
}
