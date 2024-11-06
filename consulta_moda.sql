SELECT amount
FROM Value_table
GROUP BY amount
ORDER BY COUNT(amount) DESC
LIMIT 1;
