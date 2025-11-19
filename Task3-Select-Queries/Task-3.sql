USE library_db;

SELECT * FROM books;

SELECT title, genre FROM books;

SELECT * FROM students
WHERE department = 'Engineering';

SELECT * FROM students
WHERE department = 'Engineering' AND email IS NOT NULL;

SELECT * FROM books
WHERE title LIKE '%Telangana%';

SELECT * FROM borrow_records
WHERE borrow_date BETWEEN '2025-11-01' AND '2025-11-07';

SELECT * FROM books
ORDER BY published_year;

SELECT * FROM books
ORDER BY published_year DESC;

SELECT * FROM students
LIMIT 2;

SELECT DISTINCT department FROM students;

SELECT name AS StudentName, email AS EmailAddress
FROM students;
