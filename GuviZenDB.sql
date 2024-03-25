CREATE TABLE COURSE (
    Course_Number INTEGER AUTO_INCREMENT PRIMARY KEY,
    Course_Name VARCHAR(255),
    Course_Duration VARCHAR(255),
    Course_Fees VARCHAR(255)
);

INSERT INTO COURSE (Course_Name, Course_Duration, Course_Fees) VALUES 
    ('Full Stack Development', '3 Months', '50K'),
    ('Data Science', '4 Months', '60K'),
    ('Machine Learning and AI', '5 Months', '70K'),
    ('Cyber Security', '6 Months', '80K');

SELECT * FROM COURSE;

CREATE TABLE MENTOR (
  Mentor_Id INTEGER AUTO_INCREMENT PRIMARY KEY,
  Mentor_Name VARCHAR(255),
  Batch_assigned VARCHAR(255)
);

INSERT INTO MENTOR (Mentor_Name, Batch_assigned) VALUES 
  ('Abhishek', 'FSD55WD-E'),
  ('DVS Jagan', 'FSD56WD-E'),
  ('Shiva', 'FSD57WD-E'),
  ('Sangeetha', 'FSD58WD-E');

SELECT * FROM MENTOR;

CREATE TABLE BATCH (
  Batch_Number VARCHAR(255),
  Batch_Timing VARCHAR(255),
  Mentor_Id INTEGER,		
  FOREIGN KEY (Mentor_Id) REFERENCES MENTOR(Mentor_Id)
);
INSERT INTO BATCH (Batch_Number, Batch_Timing, Mentor_Id) VALUES 
  ('FSD55WD-E', '10 AM', 1),
  ('FSD56WD-E', '12 PM', 2),
  ('FSD57WD-E', '2 PM', 3),
  ('FSD58WD-E', '6 PM', 4);

SELECT * FROM BATCH;

CREATE TABLE STUDENTS (
  Student_Id INTEGER AUTO_INCREMENT PRIMARY KEY,
  Student_Name VARCHAR(255),
  Student_Email VARCHAR(255),
  Batch_Number VARCHAR(255)
);

INSERT INTO STUDENTS (Student_Name, Student_Email, Batch_Number) VALUES 
  ('Sagar', 'sagar@gmail.com', 'FSD55WD-E'),
  ('Yuvraj', 'yuvraj@gmail.com', 'FSD56WD-E'),
  ('Siddhesh', 'siddhesh@gmail.com', 'FSD57WD-E'),
  ('Aniket', 'aniket@gmail.com', 'FSD58WD-E');

SELECT * FROM STUDENTS;

CREATE TABLE TASK (
  Task_Id INTEGER AUTO_INCREMENT PRIMARY KEY,
  Task_Name VARCHAR(255),
  Batch_Name VARCHAR(255),
  Student_Id INTEGER
);

INSERT INTO TASK (Task_Name, Batch_Name, Student_Id) VALUES 
  ('React-router', 'FSD55WD-E', 1),
  ('React-Hooks', 'FSD56WD-E', 2),
  ('React-Redux', 'FSD57WD-E', 3),
  ('React-Context API', 'FSD58WD-E', 4);

SELECT * FROM TASK;

CREATE TABLE DASHBOARD (
  Student_Id INTEGER,
  Student_Name VARCHAR(255),
  Task_Completed_Count INTEGER,
  Codekatta_Score INTEGER,
  Webkatta_Score INTEGER,
  Capstone_Project VARCHAR(255),
  Mentor_Id INTEGER,
  FOREIGN KEY (Student_Id) REFERENCES STUDENTS(Student_Id),
  FOREIGN KEY (Mentor_Id) REFERENCES MENTOR(Mentor_Id)
);

INSERT INTO DASHBOARD (Student_Id, Student_Name, Task_Completed_Count, Codekatta_Score, Webkatta_Score, Capstone_Project, Mentor_Id) VALUES 
  (1, 'Sagar', 10, 80, 70, 'ToDo App', 1),
  (2, 'Yuvraj', 12, 60, 76, 'Shopping App', 1),
  (3, 'Siddhesh', 14, 70, 80, 'Booking App', 2),
  (4, 'Aniket', 15, 80, 70, 'Calculator App', 2);

SELECT * FROM DASHBOARD;
