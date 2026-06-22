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

