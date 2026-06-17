SELECT "title", "author" FROM "longlist" WHERE "year" >= 2019 AND "year" <= 2022;

SELECT "title", "author" FROM "longlist" WHERE "year" BETWEEN 2019 AND 2022;

SELECT "title", "rating" FROM "longlist" WHERE "rating" > 4.0;

SELECT "title", "rating", "votes" FROM "longlist" WHERE "rating" > 4.0 AND "votes" > 10000;

SELECT "title", "pages" FROM "longlist" WHERE "pages" < 300;
