# Library-Database-Schema
Library management system database schema using MySQL Workbench.

## 🏗️ Database Overview

### Tables:
- 📚 `Books`
- 👤 `Authors`
- 🏷 `Categories`
- 📘 `BookAuthors` (many-to-many)
- 🙋‍♂️ `Members`
- 🔄 `BorrowRecords`

## 📂 Files Included

| File | Description |

| `create_library_schema.sql` | SQL script to create tables |
| `library_er_diagram.png`    | ER diagram of the schema |
| `Data Insertion and Handling Null`  | SQL script with INSERT, UPDATE, DELETE |
| `README.md`                 | Project explanation |


## 🔗 ER Diagram

![Library ER Diagram](library_er_diagram.png)


## 🧠 Concepts Used

- DDL (CREATE TABLE)
- Primary and Foreign Keys
- Normalization
- ER Design
- Many-to-Many Relationships
- Insert Partial Data (Inserted NULLs or skipped some columns)   
- IS NULL / IS NOT NULL (Used in `WHERE` condition)               
- Handling NULLs (Inserted NULL into `published_date`, `return_date`)
- Safe DELETE and UPDATE (Used `WHERE` conditions to avoid errors)


## 👩‍💻 Tools Used

- MySQL Workbench
- GitHub
