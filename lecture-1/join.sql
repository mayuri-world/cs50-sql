
/* Join */

SELECT *
FROM "sea_lions"
JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";

/*Left Join */

SELECT *
FROM "sea_lions"
LEFT JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";

/*Right Join */

SELECT *
FROM "sea_lions"
RIGHT JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";

/*Full Join */

SELECT *
FROM "sea_lions"
FULL JOIN "migrations" ON "migrations"."id" = "sea_lions"."id";

/*Self Join */

SELECT *
FROM "sea_lions" AS "a"
JOIN "sea_lions" AS "b" ON "a"."id" = "b"."id";

/*Cross Join */

SELECT *
FROM "sea_lions"
CROSS JOIN "migrations";

/*Natural Join */

SELECT *
FROM "sea_lions"
NATURAL JOIN "migrations";

/*Using Join */

SELECT *
FROM "sea_lions"
JOIN "migrations" USING ("id");

/*Join with Subquery */

SELECT *
FROM "sea_lions"
JOIN (
    SELECT *
    FROM "migrations"
    WHERE "year" = 2020
) AS "m" ON "m"."id" = "sea_lions"."id";





