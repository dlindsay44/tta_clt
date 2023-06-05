USE uni;

/*1. Obtain a list of applications
where the CourseID is unknown.*/
SELECT *
FROM application
WHERE CourseAppliedFor IS NULL;

/*2. Obtain a list of students where
their CourseID is not unknown.*/
SELECT *
FROM student
WHERE CourseID IS NOT NULL;

/*3. Obtain a list of students whom
were born in the month of June
2002.*/
SELECT *
FROM student
WHERE DateOfBirth LIKE '2002-06-__';

/*4. Obtain a list of applications
where CourseID is unknown and
the applications where made
between 01/04/2020 and
31/07/2020.*/
SELECT *
FROM application
WHERE CourseAppliedFor IS NULL
AND DateOfApplication BETWEEN '2020-04-01' AND '2020-07-31';
