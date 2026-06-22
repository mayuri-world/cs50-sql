SELECT "title", "author"
FROM "longlist"
WHERE "year" = 2023

SELECT "title", "author"
FROM "longlist"
WHERE "year" >= 2022 AND "year" <= 2023;

SELECT "title", "author"
FROM "longlist"
WHERE "year" BETWEEN 2022 AND 2023;

SELECT "title", "author"
FROM "longlist"
WHERE "year" < 2022 OR "year" > 2023;

SELECT "title", "author"
FROM "longlist"
WHERE NOT ("year" >= 2022 AND "year" <= 2023);

SELECT "title", "author"
FROM "longlist"
WHERE "year" >= 2022 AND "year" <= 2023;

SELECT "title", "author"
FROM "longlist"
WHERE "year" BETWEEN 2022 AND 2023;

SELECT "title", "author"
FROM "longlist"
WHERE "year" < 2022 OR "year" > 2023;

SELECT "title", "author"
FROM "longlist"
WHERE NOT ("year" >= 2022 AND "year" <= 2023);

SELECT "title", "format"
FROM "longlist"
WHERE "format" != 'hardcover';

SELECT "title", "format"
FROM "longlist"
WHERE "format" <> 'hardcover';

SELECT "title", "format"
FROM "longlist"
WHERE NOT "format" = 'hardcover';

SELECT "title", "author"
FROM "longlist"
WHERE "year" = 2022 OR "year" = 2023;