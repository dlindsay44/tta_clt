USE uni;

--Count how many students are enrolled overall.
SELECT COUNT(*) FROM student;

/*Calculate the sum of full time fees for every full-time course.*/
SELECT SUM(FullTimeFee)
FROM fees;

/*Identify the cost of the least and most expensive course.*/
SELECT MAX(FullTimeFee) AS MostExpensiveCourse
FROM fees;
SELECT MIN(PartTimeFee) AS LeastExpensiveCourse
FROM fees;

--Calculate the average cost of all part time courses.
SELECT AVG(PartTimeFee)
FROM fees;

/*Calculate the fee of each full time course after applying 
(subtracting) the scholarship discount.*/ 
SELECT CourseID, FullTimeFee - ScholarshipDiscount
FROM fees;

/*Select only the course number of the cheapest full-time
course.*/
SELECT CourseID
FROM fees
ORDER BY FullTimeFee
LIMIT 1;

/*Find cost of the most expensive course after applying the
scholarship discount.*/
SELECT FullTimeFee - ScholarshipDiscount
FROM fees
ORDER BY FullTimeFee DESC
LIMIT 1;

/*Count the number of
applications for History courses
made between 01/03/2020 and
30/08/2020*/
SELECT * FROM course
WHERE CourseName = 'History';

SELECT COUNT(applicationID)
FROM application
WHERE CourseAppliedFor = 11
AND DateOfApplication BETWEEN '2020-03-01' AND '2020-08-30';

