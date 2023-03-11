-- DropForeignKey
ALTER TABLE "Answer" DROP CONSTRAINT "Answer_id_fkey";

-- AlterTable
ALTER TABLE "Answer" ADD COLUMN     "pollId" TEXT;

-- AddForeignKey
ALTER TABLE "Answer" ADD CONSTRAINT "Answer_pollId_fkey" FOREIGN KEY ("pollId") REFERENCES "Poll"("id") ON DELETE SET NULL ON UPDATE CASCADE;
