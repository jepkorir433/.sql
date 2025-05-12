-- 1. List all tables
SHOW TABLES FROM library_management;

-- 2. Show columns for a specific table
SHOW COLUMNS FROM books;

-- 3. Show foreign keys
SELECT
    TABLE_NAME,
    COLUMN_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = 'library_management'
  AND REFERENCED_TABLE_NAME IS NOT NULL;