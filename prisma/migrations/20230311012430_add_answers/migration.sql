-- CreateTable
CREATE TABLE "Poll" (
    "id" TEXT NOT NULL,
    "prompt" TEXT NOT NULL,

    CONSTRAINT "Poll_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Answer" (
    "id" TEXT NOT NULL,

    CONSTRAINT "Answer_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Answer" ADD CONSTRAINT "Answer_id_fkey" FOREIGN KEY ("id") REFERENCES "Poll"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
