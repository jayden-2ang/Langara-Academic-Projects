-- 
-- Group 17
-- Members: Navanbir, MySQL Expert
--          Jayden Ang, MS SQL Expert
-- --------------------------------------
-- All queries must run without any error under MySQL and MS SQL Server.
-- Using MS SQL


-- Query 1: Display Full Database in MS SQL
SELECT *
FROM Groups G JOIN Students S ON G.GroupID = S.GroupID 
JOIN FundedProject F ON G.GroupID = F.GroupID JOIN Club C ON G.GroupID = C.GroupID 
JOIN Event E ON G.GroupID = E.GroupID JOIN Organizers O ON E.EventID = O.EventID 
LEFT JOIN Membership M ON S.StudentID = M.StudentID LEFT JOIN CurrStudents Curr ON M.StudentID = Curr.StudentID
LEFT JOIN Alumni A ON M.StudentID = A.StudentID;

-- Query 2: Display number of Events
SELECT COUNT(OrganizerID) AS NumOfEvents
FROM Organizers;

-- Query 3: Display the Budget for each Student
SELECT Budget / (SELECT COUNT(StudentID) FROM Students)
FROM FundedProject;

-- Query 4: Sum up total of all Budgets
SELECT SUM(Budget)
FROM FundedProject;

-- Query 5: Insert new Student
INSERT INTO Students VALUES ('S004', 'jason.paltra@gmail.com', 2345678901, 2021, 'G003');

-- Query 6: Find all students who were enrolled in the year 2021
SELECT StudentID
FROM Students
WHERE EnrollmentYear = 2021;

-- Query 7: Find the average registration fee of all events
SELECT AVG(RegistrationFee)
FROM Event;

-- Query 8: Update existing Student
UPDATE Students 
SET EnrollmentYear = 2023
WHERE StudentID = 'S003';

-- Query 9: Delete Student
DELETE FROM Students WHERE StudentID = 'S003';

-- Query 10: Using view to display all students
CREATE VIEW AllStudents
AS 
SELECT StudentID, FName, LName
FROM Membership;

-- Query 11: Display minimum budget for projects
SELECT MIN(Budget) AS MinBudget
FROM FundedProject;

-- Query 12: Finding the Most Expensive Event
SELECT EventID, Subject, MAX(RegistrationFee) AS HighestFee
FROM Event;


-- Query 13: Find all Students who enrolled in school after 2000
SELECT M.StudentID, FName, LName, EnrollmentYear
FROM Membership M, Students S
WHERE M.StudentID = S.StudentID
GROUP BY M.StudentID, FName, LName, EnrollmentYear
HAVING EnrollmentYear > 2000; 

-- Query 14: Display Group and Club tables
SELECT g.GroupID, g.Head, c.ClubID, c.Name AS ClubName
FROM Groups g
RIGHT JOIN Club c ON g.GroupID = c.GroupID;

-- Query 15: Finding Students who have a Membership (Only works on MySQL because MS SQL doesn't support NATURAL JOIN)
SELECT StudentID, FName, LName, StartDate, EndDate
FROM Students 
NATURAL JOIN Membership;

-- Query 16: Finding club with highest number of groups
SELECT c.ClubID, c.Name, COUNT(g.GroupID) AS TotalGroups
FROM Club c
LEFT JOIN Groups g ON c.GroupID = g.GroupID
GROUP BY c.ClubID, c.Name
HAVING COUNT(g.GroupID) >= ALL (
    SELECT COUNT(g2.GroupID)
    FROM Club c2
    LEFT JOIN Groups g2 ON c2.GroupID = g2.GroupID
    GROUP BY c2.ClubID, c2.Name
);

-- Query 17: Finding students in Groups
SELECT s.StudentID, s.Email, g.GroupID, g.Head
FROM Students s
INNER JOIN Groups g ON s.GroupID = g.GroupID;

-- Query 18: Finding Students who participated in an event
SELECT s.StudentID, s.Email, g.GroupID, g.Head
FROM Students s
INNER JOIN Groups g ON s.GroupID = g.GroupID;

-- Query 19: Finding Students who participated in an event
SELECT s.StudentID, s.Email, e.EventID, e.Subject, e.Date
FROM Students s
CROSS JOIN Event e;

-- Query 20: Finding the Latest Alumni records
SELECT * 
FROM Alumni
ORDER BY EndDate DESC;
