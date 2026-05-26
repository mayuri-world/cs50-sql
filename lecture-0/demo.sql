select * from "longlist" limit 3;

select "author" from "longlist";

select "title", "author" from "longlist" where "year"=2022;

select "title", "author" from "longlist" where "year"=2021;

SELECT "title", "format"
FROM "longlist"
WHERE "format" != 'hardcover';

SELECT "title", "format"
FROM "longlist"
WHERE "format" <> 'hardcover';

SELECT "title", "format"
FROM "longlist"
WHERE NOT "format" = 'hardcover';

SELECT "title", "author"
FROM "longlist"
WHERE "year" = 2022 OR "year" = 2023;

select * FROM "longlist";
select "title" FROM "longlist";
select "title", "author" FROM longlist;
SELECT "title" from "longlist" LIMIT 10;
SELECT "title" , "author" FROM "longlist" WHERE "fromat" !='hardcover';
SELECT "title", "author" FROM "longlist" WHERE "year"= 2023;
SELECT "title", "format" FROM "longlist" WHERE "format" !='hardcover';
SELECT "title", "translator" FROM "longlist" WHERE "translator" IS NULL;
SELECT "title", "translator" FROM "longlist" WHERE "translator" IS NOT NULL;

SELECT "title", "author" FROM "longlist" WHERE "year" >= 2019 AND "year" <= 2022;

SELECT "title", "author" FROM "longlist" WHERE "year" BETWEEN 2019 AND 2022;

SELECT "title", "rating" FROM "longlist" WHERE "rating" > 4.0;

SELECT "title", "rating", "votes" FROM "longlist" WHERE "rating" > 4.0 AND "votes" > 10000;

SELECT "title", "pages" FROM "longlist" WHERE "pages" < 300;


SELECT "title", "rating"
FROM "longlist"
ORDER BY "rating" LIMIT 10;

SELECT "title", "rating"
FROM "longlist"
ORDER BY "rating" DESC LIMIT 10;

SELECT "title", "rating", "votes" FROM "longlist" ORDER BY "rating" DESC, "votes" DESC LIMIT 10;
SELECT "title" FROM "longlist" ORDER BY "title";
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

SELECT "id" FROM "publishers" WHERE "publisher" ='Maclehose Press';
SELECT * FROM "sea_lions" JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";
SELECT * FROM "sea_lions" LEFT JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";

SELECT * FROM "sea_lions" RIGHT JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";
SELECT * FROM "sea_lions" FULL JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";
SELECT * FROM "sea_lions" NATURAL JOIN "migrations";
SELECT * FROM sea_lions JOIN "migrations" JOIN "migrations" ON "migrations"."id" ="sea_lions"."id" where "migrations"."distance" >1500;
SELECT * FROM "sea_lions" JOIN "migrations" ON "migrations"."id" = "sea_lions"."id" WHERE "migrations"."distance" > 1500
;






