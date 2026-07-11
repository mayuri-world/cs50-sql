
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


/* Indexes: data structures that allow us to quickly look up data in a table. */


CREATE INDEX "title_index" ON "movies" ("title");

SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans';
SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans' AND "release_year" = 2022;
CREATE INDEX "title_year_index" ON "movies" ("title", "release_year");
SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans';
SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans'
AND "release_year" = 2022;



CREATE INDEX "title_index" ON "movies" ("title");

CREATE INDEX "title_year_index" ON "movies" ("title", "release_year");

CREATE INDEX "release_year_index" ON "movies" ("release_year");

CREATE INDEX "release_year_title_index" ON "movies" ("release_year", "title");

CREATE INDEX "release_year_title_index" ON "movies" ("release_year", "title");
