-- 
-- Group 17
-- Members: Navanbir, MySQL Expert
--          Jayden Ang, MS SQL Expert
-- --------------------------------------
-- Using MS SQL
--the entire code works perfectly on MySQL

CREATE DATABASE G17_Ace_Club_Management;
USE G17_Ace_Club_Management;

 CREATE TABLE Groups (
	GroupID VARCHAR(15) NOT NULL,
	Head VARCHAR(15) NOT NULL,
	PRIMARY KEY (GroupID)
);

CREATE TABLE Students (
	StudentID VARCHAR(15) NOT NULL,
	Email VARCHAR(25) NOT NULL,
	Phone VARCHAR(10) NOT NULL,
	EnrollmentYear INT NOT NULL,
	GroupID VARCHAR(15) NOT NULL,
	PRIMARY KEY (StudentID),
	FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
);

CREATE TABLE FundedProject (
	ProjectID VARCHAR(15) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE,
	Budget INT NOT NULL,
	GroupID VARCHAR(15) NOT NULL,
	PRIMARY KEY (ProjectID),
	FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
);

CREATE TABLE Club (
	ClubID VARCHAR(15) NOT NULL,
	LeadID VARCHAR(15) NOT NULL,
	Name VARCHAR(25) NOT NULL,
	Type VARCHAR(15) NOT NULL,
	GroupID VARCHAR(15) NOT NULL,
	PRIMARY KEY (ClubID),
	FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
);

CREATE TABLE Event (
	EventID VARCHAR(15) NOT NULL,
	Date DATE NOT NULL, 
	Time TIME NOT NULL, 
	RoomNum INT NOT NULL,
	Floor INT NOT NULL,
	Building VARCHAR(20) NOT NULL,
	Subject VARCHAR(25) NOT NULL,
	RegistrationFee INT NOT NULL,
	GroupID VARCHAR(15) NOT NULL,
	PRIMARY KEY (EventID),
	FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
);

CREATE TABLE Membership (
	StudentID VARCHAR(15) NOT NULL,
	FName VARCHAR(15) NOT NULL,
	LName VARCHAR(15) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	PRIMARY KEY (StudentID),
	FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

CREATE TABLE CurrStudents (
	StudentID VARCHAR(15) NOT NULL,
	PRIMARY KEY (StudentID),
	FOREIGN KEY (StudentID) REFERENCES Membership(StudentID)
);

CREATE TABLE Alumni (
	StudentID VARCHAR(15) NOT NULL,
	CompanyName VARCHAR(25) NOT NULL,
	Position VARCHAR(25) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	PRIMARY KEY (StudentID),
	FOREIGN KEY (StudentID) REFERENCES Membership(StudentID)
);

CREATE TABLE Organizers (
	OrganizerID VARCHAR(15) NOT NULL,
	Email VARCHAR(25) NOT NULL,
	Phone VARCHAR(10) NOT NULL,
	EventID VARCHAR(15) NOT NULL,
	PRIMARY KEY (OrganizerID),
	FOREIGN KEY (EventID) REFERENCES Event(EventID)
);