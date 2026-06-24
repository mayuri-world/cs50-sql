

ALTER TABLE "collections"
ADD COLUMN "deleted" INTEGER DEFAULT 0;

UPDATE "collections"
SET "deleted" = 1
WHERE "title" = 'Farmers working at dawn';

SELECT * FROM "collections"
WHERE "deleted" != 1;

ALTER TABLE "collections"
ADD COLUMN "deleted" INTEGER DEFAULT 0;

CREATE TRIGGER "soft_delete"
BEFORE DELETE ON "collections"
BEGIN
    UPDATE "collections"
    SET "deleted" = 1
    WHERE "id" = OLD."id";
    SELECT RAISE(IGNORE);
END;

DELETE FROM "collections"
WHERE "title" = 'Farmers working at dawn';

SELECT * FROM "collections"
WHERE "deleted" != 1;

CREATE TABLE "transactions" (
    "id" INTEGER,
    "title" TEXT,
    "action" TEXT,
    PRIMARY KEY("id")
);

CREATE TRIGGER "sell"
BEFORE DELETE ON "collections"
BEGIN
    INSERT INTO "transactions" ("title", "action")
    VALUES (OLD."title", 'sold');
END;

ALTER TABLE "collections"
ADD COLUMN "deleted" INTEGER DEFAULT 0;

CREATE TRIGGER "soft_delete"
BEFORE DELETE ON "collections"
BEGIN
    UPDATE "collections"
SET "deleted" = 1
    WHERE "id" = OLD."id";
    INSERT INTO "transactions" ("title", "action")
    VALUES (OLD."title", 'sold');
    SELECT RAISE(IGNORE);
END;

