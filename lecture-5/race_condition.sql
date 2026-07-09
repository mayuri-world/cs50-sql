/* Transactions can help guard against race conditions.
A race condition occurs when multiple entities simultaneously access and make decisions based on a shared value,
potentially causing inconsistencies in the database.
Unresolved race conditions can be exploited by hackers to manipulate the database.



       UNLOCKED: this is the default state when no user is accessing the database,
        SHARED: when a transaction is reading data from the database, it obtains shared lock that allows other transactions to read simultaneously from the database,
        EXCLUSIVE: if a transaction needs to write or update data, it obtains an exclusive lock on the database that does not allow other transactions to occur at the same time (not even a read)

*/


BEGIN EXCLUSIVE TRANSACTION;

