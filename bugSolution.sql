The solution is to always perform explicit type conversions to avoid unexpected behavior.  This enhances the clarity, predictability, and portability of your SQL queries.  

Revised Query:
```sql
SELECT * FROM employees WHERE salary = CAST('10000' AS INT);
```
This explicitly converts the string '10000' to an integer before comparing it to the `salary` column.  The specific casting function might differ slightly across database systems (e.g., `CAST`, `CONVERT`). Ensure you use the appropriate function for your database system.  Always check your data types and use explicit conversions whenever there's a potential for implicit type conversion issues.