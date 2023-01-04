USE uni;

/*Write a select statement to obtain all of the student information 
for successful applications made for Course 11 which do not relate to
current students.*/
SELECT * FROM application
WHERE StudentID = 0 
AND CourseAppliedFor = 11
AND accepted = 1;

/*Modify the select statement from
the previous example into an insert
statement and insert the data into
the student table.*/
INSERT INTO student (CourseID, Forenames, Surname,
EmailAddress)
VALUES 
(11, 'Josh', 'Keene', 'josh.keene@example.com'),
(11, 'Patrick', 'Hoyer', 'patrick.hoyer@example.com'),
(11, 'Crystal', 'Harris', 'crystal.harris@example.com'),
(11, 'Steph', 'Davidson', 'steph.davidson@example.com');

/*Write a select statement to obtain
all the information for the
unsuccessful applications made for
Course 11*/
SELECT * FROM application
WHERE CourseAppliedFor = 11
AND accepted = 0;

/*Modify the select statement
from the previous example into a
delete statement and delete the
unsuccessful Course 11*/
DELETE FROM application
WHERE CourseAppliedFor = 11
AND accepted = 0;

/*Write a select statement to
identify the unsuccessful
applications for course 1 made
after 01/03/2020*/
SELECT * FROM application
WHERE CourseAppliedFor = 1
AND DateOfApplication > '2020/03/01'
AND accepted = 0;

/*Using the select statement from
the previous example, modify it into
an update statement and update
the applications to successful*/
UPDATE application
SET accepted = 1
WHERE CourseAppliedFor = 1
AND DateOfApplication > '2020/03/01'
AND accepted = 0;

/*Obtain a list of Students and the
name of the Courses they are
studying*/
SELECT * FROM student
LEFT JOIN course
ON student.CourseID = course.CourseID;

/*Obtain a list of course names,
full time fees and part time fees
for each course*/
SELECT CourseName FROM course
LEFT JOIN fees
ON fees.CourseID = course.CourseID;

/*Obtain a list of classIDs for the Economics Course and 
the modules they relate to.*/
SELECT ClassID, ModuleName 
FROM class, module
WHERE Subject = 'Economics';
