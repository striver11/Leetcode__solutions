SELECT
  CASE
    WHEN (SELECT COUNT(*) FROM Employee) = 1 THEN NULL
    ELSE (
      SELECT MAX(salary)
      FROM (
        SELECT ROWNUM AS sino, salary
        FROM (
          SELECT DISTINCT salary
          FROM Employee
          ORDER BY salary DESC
        )
      )
      WHERE sino = 2
    )
  END AS SecondHighestSalary
FROM dual;
