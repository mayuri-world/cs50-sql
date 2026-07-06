
/*
Transactions have some properties, which can be remembered using the acronym ACID:

    atomicity: can’t be broken down into smaller pieces,
    consistency: should not violate a database constraint,
    isolation: if multiple users access a database, their transactions cannot interfere with each other,
    durability: in case of any failure within the database, all data changed by transactions will remain.
*/



SELECT * FROM "accounts";

BEGIN TRANSACTION;
UPDATE "accounts" SET "balance" = "balance" + 10 WHERE "id" = 2;
UPDATE "accounts" SET "balance" = "balance" - 10 WHERE "id" = 1;
COMMIT;

 BEGIN TRANSACTION;
UPDATE "accounts" SET "balance" = "balance" + 10 WHERE "id" = 2;
UPDATE "accounts" SET "balance" = "balance" - 10 WHERE "id" = 1;
ROLLBACK;

BEGIN TRANSACTION;
UPDATE "accounts" SET "balance" = "balance" + 10 WHERE "id" = 2;
UPDATE "accounts" SET "balance" = "balance" - 10 WHERE "id" = 1;
COMMIT;

BEGIN TRANSACTION;
UPDATE "accounts" SET "balance" = "balance" + 10 WHERE "id" = 2;
UPDATE "accounts" SET "balance" = "balance" - 10 WHERE "id" = 1;
ROLLBACK;


