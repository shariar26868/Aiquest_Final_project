SELECT table_rows
FROM information_schema.tables
WHERE table_name = 'users' AND table_schema = 'office_management';

SELECT COUNT(1) FROM users;
