/*
  Warnings:

  - You are about to alter the column `progress` on the `lesson_progress` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Double`.
  - You are about to alter the column `progress` on the `topic_progress` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Double`.
  - Added the required column `createdAt` to the `lesson_progress` table without a default value. This is not possible if the table is not empty.
  - Added the required column `createdAt` to the `topic_progress` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `lesson_progress` ADD COLUMN `createdAt` VARCHAR(30) NOT NULL,
    ADD COLUMN `deletedAt` VARCHAR(30) NULL,
    ADD COLUMN `updatedAt` VARCHAR(30) NULL,
    MODIFY `progress` DOUBLE NOT NULL;

-- AlterTable
ALTER TABLE `topic_progress` ADD COLUMN `createdAt` VARCHAR(30) NOT NULL,
    ADD COLUMN `deletedAt` VARCHAR(30) NULL,
    ADD COLUMN `updatedAt` VARCHAR(30) NULL,
    MODIFY `progress` DOUBLE NOT NULL;
