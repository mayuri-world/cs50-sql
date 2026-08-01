SELECT AVG("rating") FROM "longlist";
SELECT ROUND(AVG("rating"), 2) FROM "longlist";
SELECT ROUND(AVG("rating"), 2) AS "average rating" FROM "longlist";
SELECT MAX("rating") FROM "longlist";
SELECT MIN ("rating") FROM "longlist";
SELECT SUM("votes") FROM "longlist";
SELECT COUNT(*) FROM "longlist";
SELECT COUNT("translator") FROM "longlist";
SELECT COUNT("publisher") FRON "longlist";
SELECT COUNT("publisher") FROM "longlist";
SELECT COUNT(DISTINCT "publisher") FROM "longlist";

SELECT "book_id", "title", "year", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
JOIN "books" ON "ratings"."book_id" = "books"."id"
GROUP BY "book_id";

SELECT "book_id", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
GROUP BY "book_id";

SELECT "book_id", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
GROUP BY "book_id"
ORDER BY "rating" DESC
LIMIT 10;

SELECT "book_id", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
GROUP BY "book_id"
ORDER BY "rating" DESC
LIMIT 10
OFFSET 10;

SELECT "book_id", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
GROUP BY "book_id"
ORDER BY "rating" DESC
LIMIT 10
OFFSET 20;

SELECT "book_id", "title", "year", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
JOIN "books" ON "ratings"."book_id" = "books"."id"
GROUP BY "book_id";

SELECT "year", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
JOIN "books" ON "ratings"."book_id" = "books"."id"
GROUP BY "year";

SELECT "year", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
JOIN "books" ON "ratings"."book_id" = "books"."id"
GROUP BY "year"
ORDER BY "year" DESC;

SELECT "year", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
JOIN "books" ON "ratings"."book_id" = "books"."id"
GROUP BY "year"
ORDER BY "year" DESC
LIMIT 10;

SELECT "year", ROUND(AVG("rating"), 2) AS "rating"
FROM "ratings"
JOIN "books" ON "ratings"."book_id" = "books"."id"
GROUP BY "year"
ORDER BY "year" DESC
LIMIT 10
OFFSET 10;



CREATE TEMPORARY VIEW "average_ratings_by_year" AS
SELECT "year", ROUND(AVG("rating"), 2) AS "rating" FROM "average_book_ratings"
GROUP BY "year";

CREATE TEMPORARY VIEW "average_ratings_by_year" AS
SELECT "year", ROUND(AVG("rating"), 2) AS "rating" FROM "average_book_ratings"
GROUP BY "year";


