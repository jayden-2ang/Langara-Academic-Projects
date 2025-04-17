-- 
-- Group 17
-- Members: Navanbir, MySQL Expert
--          Jayden Ang, MS SQL Expert
-- --------------------------------------
-- Using MS SQL
--the entire code works perfectly on MySQL

SELECT *
FROM Groups G JOIN Students S ON G.GroupID = S.GroupID 
JOIN FundedProject F ON G.GroupID = F.GroupID JOIN Club C ON G.GroupID = C.GroupID 
JOIN Event E ON G.GroupID = E.GroupID JOIN Organizers O ON E.EventID = O.EventID 
LEFT JOIN Membership M ON S.StudentID = M.StudentID LEFT JOIN CurrStudents Curr ON M.StudentID = Curr.StudentID
LEFT JOIN Alumni A ON M.StudentID = A.StudentID;