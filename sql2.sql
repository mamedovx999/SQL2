CREATE DATABASE COURSE
USE COURSE
CREATE TABLE Users
(
 Id INT PRIMARY KEY IDENTITY,
 [Name] NVARCHAR(50),
 Surname NVARCHAR(50),
 Age INT,
 Email NVARCHAR(100),
 IsDeleted BIT
)
INSERT INTO Users ([Name], Surname, Age, Email, IsDeleted)
VALUES
('Memmedeli', 'Memmedov', 20, 'memmedeli15@gmail.com', 0),
('Murad', 'Ehmedov', 22, 'murad2@gmail.com', 0),
('Fazil', 'Tagiyev', 23, 'fazil11@gmail.com', 0),
('Ilham', 'Salehov', 24, 'ilham15@gmail.com', 0);
--EDUCATION TABLE
CREATE TABLE Educations
(
Id INT PRIMARY KEY IDENTITY,
[Name] nvarchar (50)
)
INSERT INTO Educations ([Name]) VALUES
('Riyaziyyat'),
('Kimya'),
('Fizika'),
('Edebiyyat');
--Teachers Table
CREATE TABLE Teachers
(
 Id INT PRIMARY KEY IDENTITY,
 FullName NVARCHAR(50),
 Age INT,
 Email NVARCHAR(50),
 [Address] NVARCHAR(30),
 IsDeleted BIT
)
INSERT INTO Teachers (FullName,Age,Email,[Address],IsDeleted) VALUES
('Ali', 25, 'ali@gmail.com', 'Bakı', 1),
('Nərmin', 20, 'nermin@gmail.com', 'Siyezen', 0),
('Cavid', 35, 'cavid@gmail.com', 'Sumqayıt', 0),
('Aysel', 40, 'aysel@gmail.com', 'Zaqatala', 0);
--Queri
SELECT * FROM Users

SELECT * FROM Users WHERE Age <20 

SELECT COUNT(*) AS UserCount FROM Users

SELECT FullName, Age, Address FROM Teachers WHERE IsDeleted = 1

SELECT COUNT(*) AS TeacherCount FROM Teachers WHERE Age > 30 

--Employee Table
CREATE TABLE Employee
(
 Id INT PRIMARY KEY IDENTITY,
 FullName nvarchar (255),
 Age INT NOT NULL CHECK (Age > 0),
 Email NVARCHAR(100) NOT NULL UNIQUE,
 Salary decimal (18,2) check(Salary>300 and Salary<2000) not null
 )
 INSERT INTO Employee (FullName, Age, Email,Salary) values
 ('Ulvi Macidli', 30, 'ulvimacidli@example.com', 1500.00),
 ('Samir Aslanov', 25, 'samiraslanov@gmail.com', 1800.50),
 ('Leyla Memmedova ', 35, 'leylamamadova@gmail.com', 1900.00),
 ('Emil Memmedov', 28, 'emilmemmedov@example.com', 1200.75);


