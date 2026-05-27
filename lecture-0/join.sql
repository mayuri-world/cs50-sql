SELECT "id" FROM "publishers" WHERE "publisher" ='Maclehose Press';
SELECT * FROM "sea_lions" JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";
SELECT * FROM "sea_lions" LEFT JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";

SELECT * FROM "sea_lions" RIGHT JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";
SELECT * FROM "sea_lions" FULL JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";
SELECT * FROM "sea_lions" NATURAL JOIN "migrations";
SELECT * FROM sea_lions JOIN "migrations" JOIN "migrations" ON "migrations"."id" ="sea_lions"."id" where "migrations"."distance" >1500;
SELECT * FROM "sea_lions" JOIN "migrations" ON "migrations"."id" = "sea_lions"."id" WHERE "migrations"."distance" > 1500;

