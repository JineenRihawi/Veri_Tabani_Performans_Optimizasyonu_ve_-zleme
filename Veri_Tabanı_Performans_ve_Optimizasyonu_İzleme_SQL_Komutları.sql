-- Veritaban� olu�turuluyor
CREATE DATABASE KutuphaneDB;
GO

-- Kullan�lacak veritaban� se�iliyor
USE KutuphaneDB;
GO

CREATE TABLE Authors (                -- 1. Yazarlar tablosu
    AuthorID INT IDENTITY(1,1) PRIMARY KEY,       
    FullName NVARCHAR(100),                        
    Country NVARCHAR(50),                         
    BirthDate DATE,                                
    Gender NVARCHAR(10)                            
);
GO

USE KutuphaneDB;
GO
-- 2. Kitaplar tablosu
CREATE TABLE Books (
    BookID INT IDENTITY(1,1) PRIMARY KEY,          
    Title NVARCHAR(255),                           
    AuthorName NVARCHAR(100),                      
    PublishDate DATE,                              
    Genre NVARCHAR(50)                             
);
GO

USE KutuphaneDB;
GO
CREATE TABLE Readers (        -- 3. Okuyucular tablosu
    ReaderID INT IDENTITY(1,1) PRIMARY KEY,        
    FullName NVARCHAR(100),                        
    Address NVARCHAR(255),                        
    Email NVARCHAR(100),                           
    Phone NVARCHAR(50)                             
);
GO

USE KutuphaneDB;
GO
CREATE TABLE Borrowings (             -- 4. �d�n� alma kay�tlar� tablosu
    BorrowingID INT IDENTITY(1,1) PRIMARY KEY,     
    BookID INT FOREIGN KEY REFERENCES Books(BookID),  -- �d�n� al�nan kitap ID'si
    ReaderID INT FOREIGN KEY REFERENCES Readers(ReaderID), -- �d�n� alan okuyucu ID'si
    BorrowDate DATE,                               
    ReturnDate DATE                                
);
GO

INSERT INTO Authors (FullName, Country, BirthDate, Gender)
VALUES
('Nicholas Mcguire', 'USA', '1975-03-12', 'Male'),
('James Salas', 'UK', '1980-07-25', 'Male'),
('Michael Olson', 'Canada', '1968-11-09', 'Male'),
('Raven Carpenter', 'USA', '1990-02-18', 'Female'),
('David Fowler', 'Germany', '1973-10-01', 'Male'),
('Lisa Richards', 'France', '1988-12-04', 'Female'),
('Amanda Fox', 'Italy', '1983-06-30', 'Female'),
('Stephen Sanders', 'Australia', '1979-04-22', 'Male'),
('Megan Terry', 'Spain', '1992-08-11', 'Female'),
('Gary Hicks', 'Mexico', '1985-01-15', 'Male'),
('Emily Sullivan', 'USA', '1991-05-05', 'Female'),
('Daniel Vargas', 'Portugal', '1976-09-17', 'Male'),
('Isabelle Leonard', 'France', '1984-03-22', 'Female'),
('Henry Morrison', 'Ireland', '1977-06-29', 'Male'),
('Patricia Bishop', 'Canada', '1982-11-13', 'Female'),
('Caleb Yates', 'Germany', '1989-07-02', 'Male'),
('Olivia Becker', 'Austria', '1993-10-25', 'Female'),
('John Lee', 'USA', '1986-01-09', 'Male'),
('Angela Barnes', 'UK', '1990-09-03', 'Female'),
('Ryan Cox', 'USA', '1981-02-14', 'Male');

INSERT INTO Books (Title, AuthorName, PublishDate, Genre)
VALUES
('Focused bandwidth-monitored standardization', 'Nicholas Mcguire', '2022-01-20', 'Fiction'),
('Public-key fresh-thinking project', 'James Salas', '2015-05-31', 'Fiction'),
('Synergized neutral emulation', 'Michael Olson', '2022-10-24', 'Fantasy'),
('Expanded modular toolset', 'Raven Carpenter', '2021-08-26', 'Science'),
('Synergistic clear-thinking pricing structure', 'David Fowler', '2021-12-29', 'History'),
('Exclusive client-sensitive paradigm', 'Lisa Richards', '2023-04-10', 'Philosophy'),
('Ergonomic mobile migration', 'Amanda Fox', '2020-11-03', 'Romance'),
('Sharable static application', 'Stephen Sanders', '2019-06-14', 'Adventure'),
('Implemented grid-enabled installation', 'Megan Terry', '2022-07-19', 'Biography'),
('Intuitive tangible core', 'Gary Hicks', '2017-03-08', 'Fantasy'),
('Extended background internet solution', 'Emily Sullivan', '2021-05-11', 'Poetry'),
('Compatible national instruction set', 'Daniel Vargas', '2020-09-23', 'Science'),
('Integrated mission-critical open system', 'Isabelle Leonard', '2022-02-17', 'Drama'),
('Organized system-worthy infrastructure', 'Henry Morrison', '2023-03-30', 'Fiction'),
('Distributed dynamic projection', 'Patricia Bishop', '2019-01-05', 'Thriller'),
('Streamlined well-modulated neural-net', 'Caleb Yates', '2021-10-10', 'Children'),
('Multi-layered neutral neural-net', 'Olivia Becker', '2018-12-12', 'Technology'),
('Configurable executive interface', 'John Lee', '2016-08-04', 'Poetry'),
('Switchable 6th generation initiative', 'Angela Barnes', '2020-02-22', 'Self-Help'),
('Automated cohesive orchestration', 'Ryan Cox', '2023-06-07', 'History');

INSERT INTO Readers (FullName, Email, Phone, Address)
VALUES
('Aylin Demir', 'aylin.demir@example.com', '+905321112233', 'Kad�k�y, �stanbul'),
('Mehmet Y�ld�z', 'mehmet.yildiz@example.com', '+905324445566', 'Be�ikta�, �stanbul'),
('Zeynep Kaya', 'zeynep.kaya@example.com', '+905326778899', '�ankaya, Ankara'),
('Ahmet Kurt', 'ahmet.kurt@example.com', '+905329990011', 'Beylikd�z�, �stanbul'),
('Elif �z', 'elif.oz@example.com', '+905321223344', 'Ata�ehir, �stanbul'),
('Cem Karaca', 'cem.karaca@example.com', '+905325556677', 'K�z�lay, Ankara'),
('Buse Tan', 'buse.tan@example.com', '+905328889900', '�sk�dar, �stanbul'),
('Deniz Arslan', 'deniz.arslan@example.com', '+905321234567', '�i�li, �stanbul'),
('Selin Do�an', 'selin.dogan@example.com', '+905322345678', 'Fatih, �stanbul'),
('Emir Ko�', 'emir.koc@example.com', '+905323456789', 'Kad�k�y, �stanbul'),
('Nazl� �ahin', 'nazli.sahin@example.com', '+905324567890', '�ankaya, Ankara'),
('Berk Y�lmaz', 'berk.yilmaz@example.com', '+905325678901', 'Pendik, �stanbul'),
('Derya Acar', 'derya.acar@example.com', '+905326789012', 'Kartal, �stanbul'),
('Okan G�ne�', 'okan.gunes@example.com', '+905327890123', 'Ke�i�ren, Ankara'),
('�rem Polat', 'irem.polat@example.com', '+905328901234', '�mraniye, �stanbul'),
('Ali Vural', 'ali.vural@example.com', '+905329012345', 'G�ztepe, �stanbul'),
('Mert Eren', 'mert.eren@example.com', '+905321098765', 'Mecidiyek�y, �stanbul'),
('Pelin Ceylan', 'pelin.ceylan@example.com', '+905322198765', 'Sar�yer, �stanbul'),
('Bar�� Aksoy', 'baris.aksoy@example.com', '+905323298765', 'Beyo�lu, �stanbul'),
('Sevgi Kaplan', 'sevgi.kaplan@example.com', '+905324398765', 'Eski�ehir Yolu, Ankara');

INSERT INTO Borrowings (ReaderID, BookID, BorrowDate, ReturnDate)
VALUES
(1, 3, '2023-03-01', '2023-03-15'),
(2, 5, '2023-04-10', '2023-04-25'),
(3, 7, '2022-11-12', '2022-11-26'),
(4, 1, '2021-09-05', '2021-09-20'),
(5, 8, '2023-06-18', NULL),
(6, 4, '2020-02-10', '2020-02-24'),
(7, 10, '2022-01-14', '2022-01-28'),
(8, 2, '2023-07-19', NULL),
(9, 6, '2021-05-03', '2021-05-17'),
(10, 9, '2020-12-25', '2021-01-08'),
(11, 12, '2023-01-02', '2023-01-16'),
(12, 13, '2022-04-09', '2022-04-23'),
(13, 14, '2023-02-11', NULL),
(14, 15, '2022-09-07', '2022-09-21'),
(15, 11, '2021-07-15', '2021-07-29'),
(16, 16, '2020-03-20', '2020-04-03'),
(17, 18, '2021-10-12', '2021-10-26'),
(18, 17, '2022-05-23', NULL),
(19, 19, '2023-03-30', NULL),
(20, 20, '2023-04-14', NULL);

SELECT TABLE_SCHEMA, TABLE_NAME    -- K�t�phane veritaban�ndaki t�m 
FROM INFORMATION_SCHEMA.TABLES     --temel (base) tablolar� listeler
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_SCHEMA, TABLE_NAME;

-- En �ok CPU kullanan 20 sorguyu listeler (ortalama CPU zaman� baz al�narak)
SELECT TOP 20
    qs.execution_count,                                      -- Sorgunun ka� kez �al��t���
    qs.total_worker_time,                                    -- Toplam CPU s�resi (mikrosaniye)
    qs.total_worker_time / NULLIF(qs.execution_count, 0) AS Avg_CPU_Time, -- Ortalama CPU s�resi
    SUBSTRING(qt.text, 
        (qs.statement_start_offset / 2) + 1, 
        ((CASE qs.statement_end_offset 
            WHEN -1 THEN DATALENGTH(qt.text) 
            ELSE qs.statement_end_offset 
        END - qs.statement_start_offset) / 2) + 1) AS QueryText -- Sorgu metni
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
WHERE qs.execution_count > 0
ORDER BY Avg_CPU_Time DESC;

-- En az kullan�lan indeksleri tespit eder (arama, tarama, lookup say�s�na g�re)
SELECT 
    OBJECT_NAME(i.object_id) AS TableName,     
    i.name AS IndexName,                       
    i.index_id,                                
    s.user_seeks, s.user_scans,                -- Arama ve tarama say�s�
    s.user_lookups, s.user_updates             
FROM sys.indexes AS i
LEFT JOIN sys.dm_db_index_usage_stats AS s 
    ON i.object_id = s.object_id AND i.index_id = s.index_id
WHERE OBJECTPROPERTY(i.object_id, 'IsUserTable') = 1            -- Sadece kullan�c� tablolar�
  AND i.name IS NOT NULL																								
ORDER BY (ISNULL(s.user_seeks, 0) + ISNULL(s.user_scans, 0) + ISNULL(s.user_lookups, 0)) ASC;

-- Kullan�lmad��� tespit edilen bir indeksin tan�m�na bak
EXEC sp_helpindex 'dbo.Books';

-- OkuyucuId ve KitapId �zerinde aramalar� h�zland�rmak i�in yeni bir indeks
CREATE NONCLUSTERED INDEX IX_Borrowings_ReaderId_BookId
ON Borrowings (ReaderId, BookId); -- Borrowings tablosunda

-- Ortalama �al��t�rma s�resi en y�ksek olan sorgular� getir
SELECT TOP 5
    total_elapsed_time / execution_count AS AvgTime, -- Ortalama s�re
    execution_count,                                 -- �al��ma say�s�
    total_elapsed_time,                              -- Toplam s�re
    SUBSTRING(qt.text, 
        (qs.statement_start_offset / 2) + 1, 
        ((CASE qs.statement_end_offset                                                             
            WHEN -1 THEN DATALENGTH(qt.text) 
            ELSE qs.statement_end_offset 
        END - qs.statement_start_offset) / 2) + 1) AS QueryText -- Sorgu metni
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt
ORDER BY AvgTime DESC;

-- Tablolar�n disk kullan�m bilgilerini ve sat�r say�lar�n� getirir
SELECT 
    t.name AS TableName,                         
    SUM(p.rows) AS RowCounts,                    
    SUM(a.total_pages) * 8 AS TotalSpaceKB,      
    SUM(a.used_pages) * 8 AS UsedSpaceKB         
FROM sys.tables t
INNER JOIN sys.indexes i ON t.object_id = i.object_id
INNER JOIN sys.partitions p ON i.object_id = p.object_id AND i.index_id = p.index_id
INNER JOIN sys.allocation_units a ON p.partition_id = a.container_id
GROUP BY t.name
ORDER BY TotalSpaceKB DESC; -- En fazla yer kaplayanlar �nce gelir

-- Yeni kullan�c� i�in login olu�tur
CREATE LOGIN Ceninkullanici1 WITH PASSWORD = 'Password23'; -- G�venli �ifre

-- K�t�phane veritaban� i�in kullan�c� olu�tur
CREATE USER Ceninkullanici1 FOR LOGIN Ceninkullanici1;


-- Sadece okuma yetkisi ver (db_datareader rol�ne ekleme)
EXEC sp_addrolemember 'db_datareader', 'Ceninkullanici1';

EXEC sp_helpuser 'Ceninkullanici1'

-- Kullan�c� bilgilerini g�r�nt�leme
SELECT name, type_desc 
FROM sys.database_principals 
WHERE name = 'Ceninkullanici1'; -- Kullan�c�n�n ad�

-- �ifre g�ncelleme
ALTER LOGIN testuser WITH PASSWORD = 'YeniGuvenliSifre123';
