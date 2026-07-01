Thus far, we have seen how to optimize single queries. Now, we will look at how to allow not just one query, but multiple at a time.
Concurrency is the simultaneous handling of multiple queries or interactions by the database. Imagine a database for a website, or a financial service, that gets a lot of traffic at the same time. Concurrency is particularly important in these cases.

Some database transactions can be multi-part. For example, consider a bank’s database. The following is a view of the table accounts that stores account balances.