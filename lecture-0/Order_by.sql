SELECT "title", "rating"
FROM "longlist"
ORDER BY "rating" LIMIT 10;

SELECT "title", "rating"
FROM "longlist"
ORDER BY "rating" DESC LIMIT 10;

SELECT "title", "rating", "votes" FROM "longlist" ORDER BY "rating" DESC, "votes" DESC LIMIT 10;
SELECT "title" FROM "longlist" ORDER BY "title";

SELECT "title", "rating", "votes" FROM "longlist" ORDER BY "rating" DESC, "votes"  LIMIT 10;
SELECT "title" FROM "longlist" ORDER BY "title";

