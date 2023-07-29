-- CreateTable
CREATE TABLE `account` (
    `id` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `fullName` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `dob` VARCHAR(25) NOT NULL,
    `gender` VARCHAR(10) NOT NULL,
    `nationality` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `role` VARCHAR(10) NOT NULL,
    `createdAt` VARCHAR(25) NOT NULL,
    `updatedAt` VARCHAR(25) NULL,
    `deletedAt` VARCHAR(25) NULL,

    UNIQUE INDEX `account_username_key`(`username`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
