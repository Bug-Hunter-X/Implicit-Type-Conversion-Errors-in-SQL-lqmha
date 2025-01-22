In SQL, a common error is caused by implicit type conversion, where the database engine automatically converts data types during comparisons or operations. This can lead to unexpected results, especially when dealing with different numeric types or string representations of numbers. For example, comparing an integer column to a string representation of a number might yield incorrect results depending on the database system's behavior.  Another scenario arises when using functions that expect a specific data type, but the provided argument has a different type. The implicit conversion may not always produce the desired outcome, leading to erroneous results or errors.

Consider this example:
```sql
SELECT * FROM employees WHERE salary = '10000';
```
If the `salary` column is an integer type, and '10000' is treated as a string, an implicit conversion may occur, but its behavior isn't always consistent across database systems. Some might perform the conversion successfully, others might yield incorrect comparisons or errors.  It is always best to perform explicit type conversions to ensure the correctness and portability of the query.