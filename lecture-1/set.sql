
/* INTERSECT returns the rows that are common to both SELECT statements. */

SELECT "name" FROM "translators"
INTERSECT
SELECT "name" FROM "authors";

/* UNION returns the rows that are in either SELECT statement. */

SELECT "name" FROM "translators"
UNION
SELECT "name" FROM "authors";


SELECT 'author' AS "profession", "name"
FROM "authors"
UNION
SELECT 'translator' AS "profession", "name"
FROM "translators";

/* EXCEPT returns the rows that are in the first SELECT statement but not in the second. */

SELECT "name" FROM "authors"
EXCEPT
SELECT "name" FROM "translators";

/*These operators could be useful to answer many different questions. For example, we can find the books that Sophie Hughes and Margaret Jull Costa have translated together. */


SELECT "book_id" FROM "translated"
WHERE "translator_id" = (
    SELECT "id" from "translators"
    WHERE "name" = 'Sophie Hughes'
)
INTERSECT
SELECT "book_id" FROM "translated"
WHERE "translator_id" = (
    SELECT "id" from "translators"
    WHERE "name" = 'Margaret Jull Costa'
);





