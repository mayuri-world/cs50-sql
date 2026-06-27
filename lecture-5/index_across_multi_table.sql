/* Indexing across multiple tables. */

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