
select "author" from "longlist";

select "title", "author" from "longlist" where "year"=2022;

select "title", "author" from "longlist" where "year"=2021;

select * FROM "longlist";
select "title" FROM "longlist";
select "title", "author" FROM longlist;
SELECT "title" , "author" FROM "longlist" WHERE "fromat" !='hardcover';
SELECT "title", "author" FROM "longlist" WHERE "year"= 2023;
SELECT "title", "format" FROM "longlist" WHERE "format" !='hardcover';
SELECT "title", "translator" FROM "longlist" WHERE "translator" IS NULL;
SELECT "title", "translator" FROM "longlist" WHERE "translator" IS NOT NULL;



SELECT "id" FROM "publishers" WHERE "publisher" ='Maclehose Press';







