
SELECT * FROM "movies" LIMIT 5;

SELECT "title", "release_year" FROM "movies" WHERE "release_year" = 2023;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" IN (2022, 2023);
SELECT "title", "release_year" FROM "movies" WHERE "release_year" >= 2022;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" >= 2022 AND "release_year" <= 2023;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" BETWEEN 2022 AND 2023;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" < 2022 OR "release_year" > 2023;
SELECT "title", "release_year" FROM "movies" WHERE NOT ("release_year" >=
2022 AND "release_year" <= 2023);

SELECT "title", "release_year" FROM "movies" WHERE "release_year" >= 2022 AND "release_year" <= 2023;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" BETWEEN 2022 AND 2023;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" < 2022 OR "release_year" > 2023;
SELECT "title", "release_year" FROM "movies" WHERE NOT ("release_year" >= 2022 AND "release_year" <= 2023);