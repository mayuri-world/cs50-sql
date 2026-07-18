


SELECT "book_id", AVG("rating") AS "average rating"
FROM "ratings"
GROUP BY "book_id";

SELECT "book_id", ROUND(AVG("rating"), 2) AS "average rating"
FROM "ratings"
GROUP BY "book_id"
HAVING "average rating" > 4.0;

SELECT "book_id", ROUND(AVG("rating"), 2) AS "average rating"
FROM "ratings"
GROUP BY "book_id"
HAVING "average rating" > 4.0
ORDER BY "average rating" DESC;

SELECT "book_id", ROUND(AVG("rating"), 2) AS "average rating"
FROM "ratings"
GROUP BY "book_id"
HAVING "average rating" > 4.0
ORDER BY "average rating" DESC
LIMIT 10;

SELECT "book_id", ROUND(AVG("rating"), 2) AS "average rating"
FROM "ratings"
GROUP BY "book_id"
HAVING "average rating" > 4.0
ORDER BY "average rating" DESC
LIMIT 10 OFFSET 10;

SELECT "book_id", COUNT("rating")
FROM "ratings"
GROUP BY "book_id";

SELECT "book_id", COUNT("rating") AS "number of ratings"
FROM "ratings"
GROUP BY "book_id"
ORDER BY "number of ratings" DESC
LIMIT 10;

SELECT "book_id", COUNT("rating") AS "number of ratings"
FROM "ratings"
GROUP BY "book_id"
HAVING "number of ratings" > 1000
ORDER BY "number of ratings" DESC
LIMIT 10;

SELECT "book_id", COUNT("rating") AS "number of ratings"
FROM "ratings"
GROUP BY "book_id"
HAVING "number of ratings" > 1000
ORDER BY "number of ratings" DESC
LIMIT 10 OFFSET 10;



SELECT "book_id", ROUND(AVG("rating"), 2) AS "average rating"
FROM "ratings"
GROUP BY "book_id"
HAVING "average rating" > 4.0
ORDER BY "average rating" DESC;

SELECT "book_id", ROUND(AVG("rating"), 2) AS "average rating"
FROM "ratings"
GROUP BY "book_id"
HAVING "average rating" > 4.0
ORDER BY "average rating" DESC
LIMIT 10;




