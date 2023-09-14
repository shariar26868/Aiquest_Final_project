SELECT 
    u.id AS user_id,
    u.name AS user_name,
    u.salary AS user_salary
FROM
    Users u
WHERE
    u.salary = (SELECT 
            MAX(salary)
        FROM
            Users
        WHERE
            salary < (SELECT 
                    MAX(salary)
                FROM
                    Users));
