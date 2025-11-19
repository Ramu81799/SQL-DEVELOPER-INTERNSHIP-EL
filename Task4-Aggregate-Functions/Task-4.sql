USE library_db;

SELECT COUNT(*) AS TotalBooks FROM books;

SELECT COUNT(DISTINCT department) AS UniqueDepartments FROM students;

SELECT AVG(published_year) AS AverageYear FROM books;

SELECT SUM(book_id) AS SumOfBookIDs FROM books;

SELECT department, COUNT(*) AS StudentsCount
FROM students
GROUP BY department;

SELECT department, AVG(student_id) AS AvgStudentID
FROM students
GROUP BY department;

SELECT department, COUNT(*) AS StudentsCount
FROM students
GROUP BY department
HAVING COUNT(*) > 1;

SELECT author_id, SUM(book_id) AS TotalBookIDs
FROM books
GROUP BY author_id;

SELECT department, COUNT(DISTINCT student_id) AS UniqueStudents
FROM students
GROUP BY department;

SELECT author_id, MAX(book_id) AS MaxBookID
FROM books
GROUP BY author_id;
