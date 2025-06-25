
CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;


CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO Categories (category_name) VALUES
('Fiction'), ('Science'), ('History'), ('Technology');


CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

INSERT INTO Authors (author_name) VALUES
('J.K. Rowling'),
('Stephen Hawking'),
('Yuval Noah Harari'),
('James Clear');


CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    published_date DATE,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Books (title, published_date, category_id) VALUES
('Harry Potter', '2000-07-08', 1),
('A Brief History of Time', '1988-04-01', 2),
('Sapiens', '2011-01-01', 3),
('Atomic Habits', '2018-10-16', 4),
('NULL Book Test', NULL, 1);  -- Handling NULL in published_date


CREATE TABLE BookAuthors (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);


INSERT INTO BookAuthors (book_id, author_id) VALUES (1, 1);
INSERT INTO BookAuthors (book_id, author_id) VALUES (2, 2);
INSERT INTO BookAuthors (book_id, author_id) VALUES (3, 3);
INSERT INTO BookAuthors (book_id, author_id) VALUES (4, 4);


CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    member_name VARCHAR(100),
    join_date DATE
);

INSERT INTO Members (member_name, join_date) VALUES
('Likhitha', '2024-01-10'),
('Nanitha', '2023-11-05'),
('Supriya', NULL);  


CREATE TABLE BorrowRecords (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

INSERT INTO BorrowRecords (member_id, book_id, borrow_date, return_date) VALUES
(1, 1, '2024-02-10', '2024-02-20'),
(2, 2, '2024-03-01', NULL),  -- Not yet returned
(3, 3, '2024-04-12', '2024-04-19');


UPDATE Members
SET member_name = 'Ananya'
WHERE member_id = 3;

UPDATE BorrowRecords
SET return_date = '2024-03-15'
WHERE return_date IS NULL;

DELETE FROM Books
WHERE title = 'NULL Book Test';





