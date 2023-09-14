SELECT 
    'users' AS u,
    u.id AS user_id,
    u.name AS user_name,
    u.phone AS user_phone,
    u.role AS user_role,
    u.salary AS user_salary
FROM
    users u
WHERE
    u.salary = (SELECT 
            MAX(salary)
        FROM
            users) 
UNION ALL SELECT 
    'employers' AS e,
    e.id AS employer_id,
    e.name AS employer_name,
    NULL AS user_phone,
    e.role AS employer_role,
    e.salary AS employer_salary
FROM
    employers e
WHERE
    e.salary = (SELECT 
            MAX(salary)
        FROM
            employers);
