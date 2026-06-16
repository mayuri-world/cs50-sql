ALTER TABLE "collections"
ADD COLUMN "deleted" INTEGER DEFAULT 0;

UPDATE "collections"
SET "deleted" = 1
WHERE "title" = 'Farmers working at dawn';

CREATE VIEW "current_collections" AS
SELECT "id", "title", "accession_number", "acquired"
FROM "collections"
WHERE "deleted" = 0;

SELECT * FROM "current_collections";

SELECT * FROM "collections";

