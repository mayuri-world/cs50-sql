du -b movies.db

DROP INDEX "person_index";

/* The VACUUM command is used to clean up the database and reclaim unused space.
It can also help to optimize the database file by defragmenting it. In this case,
after dropping the index "person_index", running VACUUM will help to reduce the size of the database file and improve performance.*/

/* This might take a second or two to run.
On running the Unix command to check the size of the database again, we can should see a smaller size. */

VACUUM;