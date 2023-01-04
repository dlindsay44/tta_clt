--Obtain all information on the students not attending course 1
SELECT * FROM student 
WHERE CourseID <> 1;

/*Obtain the first name, surname and Date of Birth for the student
with the email address: val.bolger@example.com*/ 
SELECT Forenames, surname, DateOfBirth 
FROM student
WHERE EmailAddress = 'val.bolger@example.com';

--Obtain a list of the modules which have the subject Economics
SELECT * FROM module
WHERE Subject = 'Economics';

/*Obtain a list of courses applied for and their application dates
which are scheduled before 21st September 2020*/
SELECT CourseAppliedFor, DateOfApplication
FROM application
WHERE DateOfApplication < '2020-09-21';


