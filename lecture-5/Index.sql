
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

SELECT "title" FROM "movies"
WHERE "id" IN (
    SELECT "movie_id" FROM "stars"
    WHERE "person_id" = (
        SELECT "id" FROM "people"
        WHERE "name" = 'Tom Hanks'
    )
);

SELECT "title" FROM "movies"
WHERE "id" IN (
    SELECT "movie_id" FROM "stars"
    WHERE "person_id" IN (
        SELECT "id" FROM "people"
        WHERE "name" IN ('Tom Hanks', 'Meryl Streep')
    )
);

SELECT "title" FROM "movies"
WHERE "id" IN (
    SELECT "movie_id" FROM "stars"
    WHERE "person_id" IN (
        SELECT "id" FROM "people"
        WHERE "name" IN ('Tom Hanks', 'Meryl Streep')
    )
) AND "release_year" >= 2022;

SELECT "title" FROM "movies"
WHERE "id" IN (
    SELECT "movie_id" FROM "stars"
    WHERE "person_id" IN (
        SELECT "id" FROM "people"
        WHERE "name" IN ('Tom Hanks', 'Meryl Streep')
    )
) AND "release_year" >= 2022

ORDER BY "release_year" DESC;



CREATE INDEX "title_index" ON "movies" ("title");

SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans';
SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans' AND "release_year" = 2022;
CREATE INDEX "title_year_index" ON "movies" ("title", "release_year");
SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans';
SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans'
AND "release_year" = 2022;

