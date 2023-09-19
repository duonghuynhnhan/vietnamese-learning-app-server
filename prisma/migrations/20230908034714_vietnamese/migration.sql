-- CreateTable
CREATE TABLE `lesson` (
    `id` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
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
