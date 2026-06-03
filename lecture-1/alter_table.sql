

ALTER TABLE "visits"
RENAME TO "swipes";



ALTER TABLE "swipes"
ADD COLUMN "swipetype" TEXT;

ALTER TABLE "swipes"
RENAME COLUMN "swipetype" TO "type";


ALTER TABLE "swipes"
DROP COLUMN "type";


