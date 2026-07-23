DELETE FROM "collections";

DELETE FROM "collections"
WHERE "title" = 'Spring outing';

DELETE FROM "collections"
WHERE "acquired" IS NULL;

SELECT * FROM "collections";

DELETE FROM "collections"
WHERE "id" IN (1, 2);

SELECT * FROM "collections";

DELETE FROM "collections"
WHERE "acquired" < '1909-01-01';

SELECT * FROM "collections";

DELETE FROM "artists"
WHERE "name" = 'Unidentified artist';

SELECT * FROM "artists";

DELETE FROM "artists"
WHERE "id" IN (SELECT "artist_id" FROM "collections");

SELECT * FROM "artists";

DELETE FROM "collections"
WHERE "artist_id" IN (SELECT "id" FROM "artists");

DELETE FROM "created"
WHERE "artist_id" = (
    SELECT "id"
    FROM "artists"
    WHERE "name" = 'Unidentified artist'
);

DELETE FROM "collections"
WHERE "artist_id" = (
    SELECT "id"
    FROM "artists"
    WHERE "name" = 'Unidentified artist'
);

DELETE FROM "artists"
WHERE "name" = 'Unidentified artist';

FOREIGN KEY("artist_id") REFERENCES "artists"("id") ON DELETE CASCADE
FOREIGN KEY("collection_id") REFERENCES "collections"("id") ON DELETE CASCADE;

DELETE FROM "artists"
WHERE "name" = 'Unidentified artist';

SELECT * FROM "artists";

DELETE FROM "collections"
WHERE "artist_id" IN (
    SELECT "id"
    FROM "artists"
    WHERE "name" = 'Unidentified artist'
);

DELETE FROM "artists"
WHERE "name" = 'Unidentified artist';

SELECT * FROM "artists";

SELECT * FROM "created";

DELETE FROM "artists"
WHERE "name" = 'Unidentified artist';

DELETE FROM "created"
WHERE "artist_id" = (
    SELECT "id"
    FROM "artists"
    WHERE "name" = 'Unidentified artist'
);

DELETE FROM "collections"
WHERE "artist_id" = (
    SELECT "id"
    FROM "artists"
    WHERE "name" = 'Unidentified artist'
);
DELETE FROM "artists"
WHERE "name" = 'Unidentified artist';

SELECT * FROM "artists";

SELECT * FROM "created";



DELETE FROM "collections"
WHERE "title" = 'Spring outing';

DELETE FROM "collections"
WHERE "acquired" IS NULL;

DELETE FROM "collections"
WHERE "id" IN (1, 2);

DELETE FROM "collections"
WHERE "acquired" < '1909-01-01';

delete from "collections"
where "id" in (select "collection_id" from "created"
where "artist_id" = (select "id" from "artists"
where "name" = 'Unidentified artist'));

DELETE FROM "artists"
WHERE "name" = 'Unidentified artist';

delete from "created"
where "artist_id" = (select "id" from "artists"
where "name" = 'Unidentified artist');

delete from "collections"
where "artist_id" = (select "id" from "artists"
where "name" = 'Unidentified artist');

delete from "artists"
where "name" = 'Unidentified artist';

DELETE FROM "artists"
WHERE "name" = 'Unidentified artist';

delete from "collections"
where "artist_id" in (select "id" from "artists"
where "name" = 'Unidentified artist');











