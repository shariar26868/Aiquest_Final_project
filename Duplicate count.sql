SELECT id, name
FROM users
GROUP BY id, name
HAVING COUNT(*) >1;
