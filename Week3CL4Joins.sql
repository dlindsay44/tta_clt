USE uni;

/*1. Obtain a list of all modules and
the names of any courses they
may be taught (include modules
without courses).*/
SELECT module.ModuleID, module.ModuleName, course.CourseName 
FROM module
LEFT JOIN course
ON module.CourseID = course.CourseID;

/*2. Obtain a list of students along
with any related application
numbers if they have them.*/
SELECT student.*, application.applicationID
FROM student
LEFT JOIN application
ON student.StudentID = application.StudentID;

/*3. Obtain the Class ID, Class Date
and Feedback score of the latest
class scheduled for each Class
ID.*/
SELECT b.ClassID, b.CDate, b.FeedbackScore
FROM (SELECT ClassID, MAX(schedule.CDate) AS 'LatestClass'
        FROM schedule
        GROUP BY ClassID) AS a
INNER JOIN schedule AS b
ON b.ClassID = a.ClassID
AND b.CDate = a.LatestClass; 







