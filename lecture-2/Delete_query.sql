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







