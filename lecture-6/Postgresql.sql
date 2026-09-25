/* database server by opening PSQL — the command line interface for PostgreSQL.*/

psql postgresql://postgres@127.0.0.1:5432/postgres

/* To create the MBTA database, we can run */

CREATE DATABASE "mbta";



CREATE TABLE "cards" (
    "id" SERIAL,
    PRIMARY KEY("id")
);



