select "author", "title" FROM "longlist" LIMIT 5;
.schema books
CREATE TABLE riders (
"id",
"name"
);
DROP TABLE "riders";
DROP TABLE "stations";
DROP TABLE "visits";
CREATE TABLE riders (
"id",
"name"
);
CREATE TABLE visits (
"rider_id",
"station_id"
);
CREATE TABLE stations ( 
"id",
"name",
"line"
);
DROP TABLE "riders";
DROP TABLE "stations";
DROP TABLE "visits";
.schema

CREATE TABLE riders (
    "id" INTEGER,
    "name" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE stations (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "line" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE visits (
    "rider_id" INTEGER,
    "station_id" INTEGER,
    FOREIGN KEY("rider_id") REFERENCES "riders"("id"),
    FOREIGN KEY("station_id") REFERENCES "stations"("id")
);

DROP TABLE "riders";

//...alter....

ALTER TABLE "visits"
RENAME TO "swipes";



ALTER TABLE "swipes"
ADD COLUMN "swipetype" TEXT;






