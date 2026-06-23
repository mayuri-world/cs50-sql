


SELECT "title", "translator"
FROM "longlist"
 WHERE "translator" IS NULL;

SELECT "title", "translator"
 FROM "longlist"
 WHERE "translator" IS NOT NULL;

SELECT "title", "author"
FROM "longlist"
WHERE "author" IS NULL;

SELECT "title", "author"
 FROM "longlist"
 WHERE "author" IS NOT NULL;


