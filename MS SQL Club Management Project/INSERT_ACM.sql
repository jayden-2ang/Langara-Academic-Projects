-- 
-- Group 17
-- Members: Navanbir, MySQL Expert
--          Jayden Ang, MS SQL Expert
-- --------------------------------------
-- Using MS SQL
--the entire code works perfectly on MySQL

USE G17_Ace_Club_Management;

INSERT INTO Groups (GroupID, Head) VALUES ('G001', 'S001');
INSERT INTO Groups (GroupID, Head) VALUES ('G002', 'S002');

INSERT INTO Students (StudentID, Email, Phone, EnrollmentYear, GroupID) VALUES ('S001', 'jack.walker@gmail.com', '1234567890', 2021, 'G001');
INSERT INTO Students (StudentID, Email, Phone, EnrollmentYear, GroupID) VALUES ('S002', 'sam.wayne@gmail.com', '0123456789', 2022, 'G002');

INSERT INTO FundedProject (ProjectID, StartDate, EndDate, Budget, GroupID) VALUES ('P001', '2024-01-01', '2024-12-31', 50000, 'G001');
INSERT INTO FundedProject (ProjectID, StartDate, EndDate, Budget, GroupID) VALUES ('P002', '2025-02-01', '2025-12-31', 75000, 'G002');

INSERT INTO Club (ClubID, LeadID, Name, Type, GroupID) VALUES ('C001', 'S001', 'Tech Club', 'Technology', 'G001');
INSERT INTO Club (ClubID, LeadID, Name, Type, GroupID) VALUES ('C002', 'S002', 'Art Club', 'Art', 'G002');

INSERT INTO Event (EventID, Date, Time, RoomNum, Floor, Building, Subject, RegistrationFee, GroupID) VALUES ('E001', '2025-03-10', '09:00:00', 101, 1, 'Science Building', 'AI Workshop', 20, 'G001');
INSERT INTO Event (EventID, Date, Time, RoomNum, Floor, Building, Subject, RegistrationFee, GroupID) VALUES ('E002', '2025-03-15', '14:00:00', 202, 2, 'Arts Hall', 'Painting Exhibition', 15, 'G002');

INSERT INTO Membership (StudentID, FName, LName, StartDate, EndDate) VALUES ('S001', 'Jack', 'Walker', '2021-09-01', '2024-09-01');
INSERT INTO Membership (StudentID, FName, LName, StartDate, EndDate) VALUES ('S002', 'Sam', 'Wayne', '2022-09-01', '2025-09-01');

INSERT INTO CurrStudents (StudentID) VALUES ('S001');
INSERT INTO CurrStudents (StudentID) VALUES ('S002');

INSERT INTO Alumni (StudentID, CompanyName, Position, StartDate, EndDate) VALUES ('S001', 'TechCorp', 'Software Engineer', '2024-06-01', '2026-06-01');

INSERT INTO Organizers (OrganizerID, Email, Phone, EventID) VALUES ('O001', 'organizer1@gmail.com', '1111122222', 'E001');
INSERT INTO Organizers (OrganizerID, Email, Phone, EventID) VALUES ('O002', 'organizer2@gmail.com', '3333344444', 'E002');
