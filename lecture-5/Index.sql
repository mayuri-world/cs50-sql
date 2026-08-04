
SELECT * FROM "movies" LIMIT 5;

SELECT "title", "release_year" FROM "movies" WHERE "release_year" = 2023;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" IN (2022, 2023);
SELECT "title", "release_year" FROM "movies" WHERE "release_year" >= 2022;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" >= 2022 AND "release_year" <= 2023;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" BETWEEN 2022 AND 2023;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" < 2022 OR "release_year" > 2023;
SELECT "title", "release_year" FROM "movies" WHERE NOT ("release_year" >=
2022 AND "release_year" <= 2023);

SELECT "title", "release_year" FROM "movies" WHERE "release_year" >= 2022 AND "release_year" <= 2023;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" BETWEEN 2022 AND 2023;
SELECT "title", "release_year" FROM "movies" WHERE "release_year" < 2022 OR "release_year" > 2023;
SELECT "title", "release_year" FROM "movies" WHERE NOT ("release_year" >= 2022 AND "release_year" <= 2023);


/* Indexes: data structures that allow us to quickly look up data in a table. */


CREATE INDEX "title_index" ON "movies" ("title");

SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans';
SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans' AND "release_year" = 2022;
CREATE INDEX "title_year_index" ON "movies" ("title", "release_year");
SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans';
SELECT "title" FROM "movies" WHERE "title" = 'The Fabelmans'
AND "release_year" = 2022;



CREATE INDEX "title_index" ON "movies" ("title");

CREATE INDEX "title_year_index" ON "movies" ("title", "release_year");

CREATE INDEX "release_year_index" ON "movies" ("release_year");

CREATE INDEX "release_year_title_index" ON "movies" ("release_year", "title");

CREATE INDEX "release_year_title_index" ON "movies" ("release_year", "title");

/* Index Types:

1.Primary Index: Automatically created when a primary key is defined. It ensures that the primary key values are unique and provides fast access to rows based on the primary key.
2. Unique Index: Ensures that the values in the indexed column(s) are unique across the table. It can be created on any column(s) and is often used to enforce uniqueness constraints.
3. Composite Index: An index that includes multiple columns. It allows for efficient querying based on combinations of the indexed columns. The order of the columns in the index matters for query performance.
4. Full-Text Index: Used for text searching, allowing for efficient searching of text data within a column. It is commonly used in applications that require searching for keywords or phrases within large text fields.
5. Spatial Index: Used for indexing spatial data types, such as points, lines, and polygons. It enables efficient querying of spatial data based on location and geometry.
6. Partial Index: An index that includes only a subset of rows from a table, based on a specified condition. It can be useful when queries frequently filter on specific criteria, allowing for more efficient indexing and storage. For example, if a table has a "status" column with values like
7. "active" and "inactive," a partial index can be created to index only the rows where "status" is "active," improving query performance for active records while saving space for inactive ones.
8. Clustered Index: Determines the physical order of data in a table based on the indexed column(s). A table can have only one clustered index, and it is often created on the primary key. Non-clustered indexes, on the other hand, do not affect the physical order of data and can be created on multiple columns.
9. Non-Clustered Index: An index that does not affect the physical order of data in a table. It creates a separate structure that points to the actual data rows, allowing for efficient lookups based on the indexed column(s). A table can have multiple non-clustered indexes.
10. Bitmap Index: Uses bitmaps to represent the presence or absence of values in a column. It is efficient for columns with low cardinality (few distinct values) and is often used in data warehousing scenarios.
11. Hash Index: Uses a hash function to map indexed values to specific locations in the index structure. It provides fast lookups for equality comparisons but may not be suitable for range queries.
*/

CREATE INDEX "person_index" ON "stars" ("person_id");

CREATE INDEX "movie_index" ON "stars" ("movie_id");

CREATE INDEX "person_movie_index" ON "stars" ("person_id", "movie_id");