


CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" = 2023;

CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" >= 2022;

CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" >= 2022 AND "year" <= 2023;

CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" BETWEEN 2022 AND 2023;

CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" < 2022 OR "year" > 2023;

CREATE INDEX "recents" ON "movies" ("titles")
WHERE NOT ("year" >= 2022 AND "year" <= 2023);

CREATE INDEX "recents" ON "movies" ("titles")
WHERE "year" >= 2022 AND "year" <= 2023;

