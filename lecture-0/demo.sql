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
