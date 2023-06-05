USE uni;

/*1. Obtain the number of modules
which are assigned to each course.*/
SELECT CourseID AS 'Course', 
COUNT(ModuleID) AS 'Number of modules'
FROM module
GROUP BY CourseID;

/*2. Retrieve information on the 
number of successful applications
per course.*/
SELECT CourseAppliedFor,
COUNT(applicationID) AS 'Number of successful applications'
FROM application
WHERE accepted = 1
GROUP BY CourseAppliedFor;

/*3. Find the average Membership Fee
of Student Clubs by the ID of the
Staff member (Lecturer)
supervising it.*/
SELECT SupervisingStaff,
AVG(MembershipFee) AS 'Average membership fee'
FROM club
GROUP BY SupervisingStaff;

/*4. Find the Sum total of Joining
Fees for all active clubs by Staff
Member supervising them.*/
SELECT SupervisingStaff, 
SUM(JoiningFee) AS 'Sum of joining fees for active clubs'
FROM club
WHERE Active = 1
GROUP BY SupervisingStaff;

