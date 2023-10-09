/*
  Warnings:

  - You are about to drop the column `avatar` on the `lesson` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `lesson` table. All the data in the column will be lost.
  - Added the required column `type` to the `lesson` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `lesson` DROP COLUMN `avatar`,
    DROP COLUMN `name`,
    ADD COLUMN `attachment` VARCHAR(255) NULL,
    ADD COLUMN `type` VARCHAR(255) NOT NULL;
