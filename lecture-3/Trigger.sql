

CREATE TABLE "transactions" (
    "id" INTEGER,
    "title" TEXT,
    "action" TEXT,
    PRIMARY KEY("id")
);



CREATE TRIGGER "sell"
BEFORE DELETE ON "collections"
BEGIN
    INSERT INTO "transactions" ("title", "action")
    VALUES (OLD."title", 'sold');
END;

