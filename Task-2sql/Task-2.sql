-- database from Task 1
USE library_db;


INSERT INTO authors (name, country) VALUES
('K. Chandrashekar Rao', 'India'),
('P. V. Narasimha Rao', 'India'),
('S. S. Rajamouli', 'India');


INSERT INTO students (name, email, department) VALUES
('Rahul', 'rahul@hydmail.com', 'Engineering'),
('Sneha', 'sneha@hydmail.com', 'Arts'),
('Vikram', NULL, 'Commerce');


INSERT INTO books (title, author_id, published_year, genre) VALUES
('Telangana History', 1, 2010, 'History'),
('Indian Politics', 2, 2005, 'Politics'),
('Epic Movies', 3, 2015, 'Entertainment');

INSERT INTO borrow_records (book_id, student_id, borrow_date, return_date) VALUES
(1, 1, '2025-11-01', '2025-11-10'),
(2, 2, '2025-11-05', NULL),   -- Handling NULL return date
(3, 3, '2025-11-07', '2025-11-15');


UPDATE students
SET email = 'vikram@hydmail.com'
WHERE student_id = 3;


DELETE FROM borrow_records
WHERE borrow_id = 2;
