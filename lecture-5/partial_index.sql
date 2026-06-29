
/* this is an index that includes only a subset of rows from a table, allowing us to save some space that a full index would occupy.
This is especially useful when we know that users query only a subset of rows from the table. In the case of IMDb, it may be that the users are more likely to query a movie that was just released as opposed to a movie that is 15 years old. Let’s try to create a partial index that stores the titles of movies released in 2023.*/


CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" = 2023;

CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" >= 2022;

CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" >= 2022 AND "year" <= 2023;

CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" BETWEEN 2022 AND 2023;

CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" < 2022 OR "year" > 2023;

CREATE INDEX "recents" ON "movies" ("titles")
WHERE NOT ("year" >= 2022 AND "year" <= 2023);

CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" >= 2022 AND "year" <= 2023;

