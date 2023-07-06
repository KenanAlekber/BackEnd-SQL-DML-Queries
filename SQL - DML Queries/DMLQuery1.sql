CREATE DATABASE CodeAcademy
USE CodeAcademy

CREATE TABLE Students
(
	Id int primary key identity,
	Name nvarchar(20) NOT NULL CHECK(len(Name) >= 3),
	Surname nvarchar(25) DEFAULT 'XXXXX' CHECK(len(Surname) >= 5),
	Age int CHECK(Age >= 18),
	AvgPoint decimal CHECK(AvgPoint >= 0 AND AvgPoint <= 100)
)

SELECT AvgPoint,
CASE
    WHEN AvgPoint >= 91 AND AvgPoint <= 100 THEN 'A'
    WHEN AvgPoint >= 81 AND AvgPoint <= 90 THEN 'B'
    WHEN AvgPoint >= 71 AND AvgPoint <= 80 THEN 'C'
    WHEN AvgPoint >= 61 AND AvgPoint <= 70 THEN 'D'
    WHEN AvgPoint >= 51 AND AvgPoint <= 60 THEN 'E'
    WHEN AvgPoint <= 51 THEN 'You failed the exam'
    ELSE 'Correct score not entered'
END AS GradePoint
FROM Students;


INSERT INTO Students (Name,Age,AvgPoint) values (N'Sənan',26,85)
INSERT INTO Students (Name,Age,AvgPoint) values (N'Kənan',20,95)
INSERT INTO Students (Name,Age,AvgPoint) values (N'Hüseyn',21,90)
INSERT INTO Students (Name,Age,AvgPoint) values (N'Orxan',20,80)
INSERT INTO Students (Name,Age,AvgPoint) values (N'Əli',20,80)


UPDATE Students
SET Name = N'Miri', Surname = N'Məmmədov'
WHERE Id in (9)


DELETE Students
WHERE Id = 4

SELECT * FROM Students
WHERE AvgPoint > 51

SELECT * FROM Students
WHERE AvgPoint > 51 AND AvgPoint < 90

SELECT * FROM Students
WHERE Name like 'K%n'

SELECT * FROM Students
WHERE Name like '___a_'

--SELECT * FROM Students
--WHERE GradePoint 'A' AND 'C'