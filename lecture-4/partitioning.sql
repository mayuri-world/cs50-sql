
/*partitioning: dividing data into logical pieces, so that we can query only the data we need, instead of all the data,*/

CREATE VIEW "2022" AS
SELECT "id", "title" FROM "books"
WHERE "year" = 2022;

SELECT * FROM "2022";
CREATE VIEW "books_before_2000" AS
SELECT "id", "title" FROM "books"
WHERE "year" < 2000;

SELECT * FROM "books_before_2000";
CREATE VIEW "books_before_2000" AS
SELECT "id", "title" FROM "books"
WHERE "year" < 2000;

SELECT * FROM "books_before_2000";

CREATE VIEW "books_before_2000" AS
SELECT "id", "title" FROM "books"
WHERE "year" < 2000;

SELECT * FROM "books_before_2000";

CREATE VIEW "books_before_2000" AS
SELECT "id", "title" FROM "books"
WHERE "year" < 2000;



SELECT * FROM "2022";

SELECT * FROM "books_before_2000";

