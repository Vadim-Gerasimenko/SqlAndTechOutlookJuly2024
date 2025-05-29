DROP DATABASE university;

CREATE DATABASE university;
USE university;

CREATE TABLE student
(
	studentCardNumber INT AUTO_INCREMENT PRIMARY KEY,
    lastName VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    middleName VARCHAR(255),
    admissionYear INT NOT NULL,
    educationForm ENUM('дневная', 'вечерняя', 'заочная'),
    groupNumber INT NOT NULL,
    CONSTRAINT checkStudent CHECK (admissionYear > 1952 AND groupNumber > 0)
);

CREATE TABLE curriculum
(
	specialty VARCHAR(255) NOT NULL,
    subjectId INT AUTO_INCREMENT PRIMARY KEY,
    subject VARCHAR(255) NOT NULL,
    semester INT NOT NULL,
    hoursCount INT NOT NULL,
    reportingForm ENUM('экзамен', 'зачёт', 'диф. зачёт'),
    CONSTRAINT checkCurriculum CHECK (semester > 0 AND semester <= 8 AND hoursCount > 0)
);

CREATE TABLE academicPerformance
(	
	semester INT NULL,
    studentId INT NOT NULL,
    subjectId INT NOT NULL,
	grade ENUM('отл', 'хор', 'удовл', 'неуд', 'зч', 'н/зч'),
	FOREIGN KEY (studentId) REFERENCES student(studentCardNumber),
    FOREIGN KEY (subjectId) REFERENCES curriculum(subjectId)
);

INSERT INTO curriculum(specialty, subject, semester, hoursCount, reportingForm)
VALUES ('Программная инженерия', 'Основы программирования', 1, 144, 'экзамен'),
	   ('Программная инженерия', 'Математический анализ', 1, 288, 'экзамен'),
       ('Программная инженерия', 'Алгебра', 1, 180, 'зачёт'),
	   ('Программная инженерия', 'Структуры данных', 1, 144, 'экзамен'),
       ('Программная инженерия', 'Базы данных', 2, 144, 'диф. зачёт'),
       ('Программная инженерия', 'Алгоритмы', 2, 120, 'зачёт'),
       ('Программная инженерия', 'Операционные системы', 3, 144, 'диф. зачёт');

INSERT INTO student(lastName, firstName, middleName, admissionYear, educationForm, groupNumber)
VALUES ('Павлов', 'Алексей', 'Вадимович', 2020, 'вечерняя', 20020),
       ('Мартов', 'Дмитрий', NULL, 2020, 'вечерняя', 20020),
       ('Иванов', 'Кирилл', 'Иванович', 2020, 'вечерняя', 20020),
       ('Форкин', 'Константин', 'Григорьевич', 2020, 'вечерняя', 20020),
	   ('Иванов', 'Иван', 'Иванович', 2022, 'дневная', 10022),
       ('Акулов', 'Степан', 'Летутович', 2022, 'заочная', 30022),
       ('Шенк', 'Ирина', NULL, 2022, 'дневная', 10022),
       ('Диркина', 'Светлана', 'Витальевна', 2023, 'заочная', 30023),
       ('Лебедев', 'Артемий', 'Николаевич', 2023, 'дневная', 10023),
       ('Лебедева', 'Оксана', 'Вадимовна', 2023, 'дневная', 10023);
			
INSERT INTO academicPerformance(studentId, subjectId, grade)
VALUES (1, 1, 'отл'), (1, 2,'отл'), (1, 3, 'зч'), (1, 4, 'отл'), (1, 5, 'отл'), (1, 6, 'зч'), (1, 7, 'хор'),
	   (2, 1, 'хор'), (2, 2,'отл'), (2, 3, 'зч'), (2, 4, 'хор'), (2, 5, 'отл'), (2, 6, 'зч'), (2, 7, 'отл'),
       (3, 1, 'отл'), (3, 2,'удовл'), (3, 3, 'зч'), (3, 4, 'хор'), (3, 5, 'неуд'), (3, 6, 'н/зч'), (3, 7, 'хор'),
       (4, 1, 'удовл'), (4, 2,'удовл'), (4, 3, 'зч'), (4, 4, 'удовл'), (4, 5, 'хор'), (4,  6, 'зч'), (4, 7, 'отл'),
       (5, 1, 'отл'), (5, 2,'отл'), (5, 3, 'зч'), (5, 4, 'хор'), (5, 5, 'отл'), (5, 6, 'зч'), (5, 7, 'хор'),
       (6, 1, 'хор'), (6, 2,'хор'), (6, 3, 'н/зч'), (6, 4, 'хор'), (6, 5, 'хор'), (6, 6, 'зч'), (6, 7, 'хор'),
       (7, 1, 'неуд'), (7, 2,'удовл'), (7, 3, 'зч'), (7, 4, 'удовл'), (7, 5, 'хор'), (7, 6, 'зч'), (7, 7, 'неуд'),
       (8, 1, 'отл'), (8, 2,'отл'), (8, 3, 'зч'), (8, 4, 'отл'), (8, 5, 'отл'), (8, 6, 'зч'), (8, 7, 'отл'),
       (9, 1, 'отл'), (9, 2,'удовл'), (9, 3, 'зч'), (9, 4, 'хор'), (9, 5, 'удовл'), (9, 6, 'н/зч'), (9, 7, 'удовл'),
       (10, 1, 'хор'), (10, 2,'хор'), (10, 3, 'зч'), (10, 4, 'отл'), (10, 5, 'хор'), (10, 6, 'зч'), (10, 7, 'отл');

UPDATE academicPerformance ap
SET ap.semester = (SELECT semester
				  FROM curriculum c
                  WHERE ap.subjectId = c.subjectId);
 
 -- query 1
SELECT educationForm, COUNT(studentCardNumber) educationFormStudentsCount
FROM student
GROUP BY educationForm
HAVING educationForm = 'дневная';

-- query 2
SELECT subject, hoursCount, reportingForm
FROM curriculum
WHERE subject = 'Алгоритмы';

-- query 3
CREATE VIEW studentsAverageScore AS
SELECT s.studentCardNumber,
	AVG(CASE 
			WHEN ap.grade = 'отл' THEN 5
			WHEN ap.grade = 'хор' THEN 4
			WHEN ap.grade = 'удовл' THEN 3
			ELSE 2
		END) AS averageScore
FROM student S
LEFT JOIN academicPerformance ap
	ON s.studentCardNumber = ap.studentId
WHERE ap.grade NOT IN ('зч', 'н/зч')
GROUP BY s.studentCardNumber;

SELECT * FROM studentsAverageScore
ORDER BY averageScore DESC
LIMIT 5;

-- query 4
SELECT studentId
FROM academicPerformance
WHERE semester = 1 AND grade IN ('отл', 'хор', 'зч')
GROUP BY studentId
HAVING COUNT(grade) = (SELECT COUNT(subjectId)
					   FROM curriculum
                       WHERE semester = 1);
-- query 5
SELECT subjectId,
	AVG(CASE
            WHEN grade IN ('зч', 'н/зч') THEN
				CASE
					WHEN grade = 'зч' THEN 1
					ELSE 0
				END
			ELSE 
				CASE
					WHEN grade = 'отл' THEN 5
					WHEN grade = 'хор' THEN 4
					WHEN grade = 'удовл' THEN 3
					ELSE 2
				END
        END) / (SELECT (CASE 
						    WHEN reportingForm = 'зачёт' THEN 1
                            ELSE 5
					    END)
				FROM curriculum c
                WHERE c.subjectId = ap.subjectId) AS progress
FROM academicPerformance ap
GROUP BY subjectId
ORDER BY progress DESC
LIMIT 1;

-- query 6
CREATE VIEW averageProgress AS
SELECT AVG(progress) averageProgress
FROM (
	SELECT SUM(CASE
				   WHEN grade IN ('зч', 'н/зч') THEN 0
				   ELSE 
					   CASE
						   WHEN grade = 'отл' THEN 5
						   WHEN grade = 'хор' THEN 4
						   WHEN grade = 'удовл' THEN 3
						   ELSE 2
					  END
			 END) / COUNT(CASE WHEN grade NOT IN ('зч', 'н/зч') THEN 1 END) AS progress
	FROM academicPerformance
	GROUP BY subjectId) AS averageProgress;
    
SELECT * FROM studentsAverageScore sas
WHERE averageScore > (SELECT averageProgress 
					  FROM averageProgress)