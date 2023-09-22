-- CreateTable
CREATE TABLE `account` (
    `id` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `fullName` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `dob` VARCHAR(25) NOT NULL,
    `gender` VARCHAR(10) NOT NULL,
    `phone` VARCHAR(20) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `role` VARCHAR(10) NOT NULL,
    `createdAt` VARCHAR(30) NOT NULL,
    `updatedAt` VARCHAR(30) NULL,
    `deletedAt` VARCHAR(30) NULL,
    `countryId` VARCHAR(20) NOT NULL,

    UNIQUE INDEX `account_username_key`(`username`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `country` (
    `id` VARCHAR(20) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `nameEN` VARCHAR(255) NOT NULL,
    `createdAt` VARCHAR(30) NULL,
    `updatedAt` VARCHAR(30) NULL,
    `deletedAt` VARCHAR(30) NULL,

    FULLTEXT INDEX `country_name_nameEN_idx`(`name`, `nameEN`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `topic` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `avatar` VARCHAR(255) NOT NULL,
    `createdAt` VARCHAR(30) NOT NULL,
    `updatedAt` VARCHAR(30) NULL,
    `deletedAt` VARCHAR(30) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `lesson` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `avatar` VARCHAR(255) NOT NULL,
    `question` VARCHAR(255) NOT NULL,
    `rightAnswer` VARCHAR(255) NOT NULL,
    `wrongAnswer1` VARCHAR(255) NOT NULL,
    `wrongAnswer2` VARCHAR(255) NOT NULL,
    `wrongAnswer3` VARCHAR(255) NOT NULL,
    `createdAt` VARCHAR(30) NOT NULL,
    `updatedAt` VARCHAR(30) NULL,
    `deletedAt` VARCHAR(30) NULL,
    `topicId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `topic_progress` (
    `status` VARCHAR(255) NOT NULL,
    `progress` INTEGER NOT NULL,
    `accountId` VARCHAR(191) NOT NULL,
    `topicId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`accountId`, `topicId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `lesson_progress` (
    `status` VARCHAR(255) NOT NULL,
    `progress` INTEGER NOT NULL,
    `lessonId` VARCHAR(191) NOT NULL,
    `topic_progressAccountId` VARCHAR(191) NOT NULL,
    `topic_progressTopicId` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`topic_progressAccountId`, `lessonId`, `topic_progressTopicId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `file` (
    `id` VARCHAR(191) NOT NULL,
    `fieldName` VARCHAR(512) NOT NULL,
    `originalName` VARCHAR(2000) NOT NULL,
    `encoding` VARCHAR(255) NOT NULL,
    `mimeType` VARCHAR(512) NOT NULL,
    `fileName` VARCHAR(512) NOT NULL,
    `url` VARCHAR(512) NOT NULL,
    `size` BIGINT NOT NULL,
    `objectType` VARCHAR(30) NULL,
    `objectId` VARCHAR(191) NULL,
    `createdAt` VARCHAR(30) NOT NULL,
    `deletedAt` VARCHAR(30) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `account` ADD CONSTRAINT `account_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `lesson` ADD CONSTRAINT `lesson_topicId_fkey` FOREIGN KEY (`topicId`) REFERENCES `topic`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `topic_progress` ADD CONSTRAINT `topic_progress_accountId_fkey` FOREIGN KEY (`accountId`) REFERENCES `account`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `topic_progress` ADD CONSTRAINT `topic_progress_topicId_fkey` FOREIGN KEY (`topicId`) REFERENCES `topic`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `lesson_progress` ADD CONSTRAINT `lesson_progress_lessonId_fkey` FOREIGN KEY (`lessonId`) REFERENCES `lesson`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `lesson_progress` ADD CONSTRAINT `lesson_progress_topic_progressAccountId_topic_progressTopic_fkey` FOREIGN KEY (`topic_progressAccountId`, `topic_progressTopicId`) REFERENCES `topic_progress`(`accountId`, `topicId`) ON DELETE RESTRICT ON UPDATE CASCADE;
