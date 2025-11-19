# Elevate Labs – SQL Developer Internship Task 1
## Database Setup and Schema Design

### Objective
The goal of this task is to create a well-structured database schema using SQL. This includes designing tables, defining primary and foreign keys, and understanding relationships between entities.

### Domain
Library Management System

### Entities
1. **Authors**
   - author_id (Primary Key)
   - name
   - country
2. **Books**
   - book_id (Primary Key)
   - title
   - author_id (Foreign Key)
   - published_year
   - genre
3. **Students**
   - student_id (Primary Key)
   - name
   - email
   - department
4. **Borrow_Records**
   - borrow_id (Primary Key)
   - book_id (Foreign Key)
   - student_id (Foreign Key)
   - borrow_date
   - return_date

### Relationships
- One author can write multiple books (1:M)
- One book can be borrowed multiple times (1:M)
- One student can borrow multiple books (1:M)

### SQL Script
The SQL script `schema.sql` includes all the commands to create the database and tables with proper constraints (primary and foreign keys).

### Tools Used
- MySQL Workbench
- VS Code / Notepad for editing SQL files

### Outcome
- A normalized database schema
- Tables with primary and foreign keys

### Submission
All files including `schema.sql` and `README.md` are included in this repository for submission.
