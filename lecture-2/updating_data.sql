
UPDATE "created"
SET "artist_id" = (
    SELECT "id"
    FROM "artists"
    WHERE "name" = 'Li Yin'
)
WHERE "collection_id" = (
    SELECT "id"
    FROM "collections"
    WHERE "title" = 'Farmers working at dawn'
);

UPDATE "created"
SET "artist_id" = (
    SELECT "id"
    FROM "artists"
    WHERE "name" = 'Li Yin'
)
WHERE "collection_id" = (
    SELECT "id"
    FROM "collections"
    WHERE "title" = 'Farmers working at dawn'
);

SELECT * FROM "created";

SELECT * FROM "collections";

UPDATE "collections"
SET "artist_id" = (
    SELECT "id"
    FROM "artists"
    WHERE "name" = 'Li Yin'
)
WHERE "title" = 'Farmers working at dawn';

CREATE TRIGGER "buy"
AFTER INSERT ON "collections"
BEGIN
    INSERT INTO "transactions" ("title", "action")
    VALUES (NEW."title", 'bought');
END;

UPDATE "collections"
SET "artist_id" = (
    SELECT "id"
    FROM "artists"
    WHERE "name" = 'Li Yin'
)
WHERE "title" = 'Farmers working at dawn';





