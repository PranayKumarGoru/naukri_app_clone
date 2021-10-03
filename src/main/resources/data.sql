CREATE TABLE Users (
    user_id varchar(255) PRIMARY KEY,
    password varchar(255),
    name varchar(255),
    email varchar(255),
    phone varchar(255),
    experience DECIMAL,
    current_company varchar(255),
    skillset varchar(255)
);

INSERT INTO Users (user_id, password, name, email, phone, experience, current_company, skillset)  
   VALUES ('prakhar.g', 'samplePwd', 'Prakhar', 'prakhar.gupta@relevel.com', '8877459854', 4.5,'Tata Consultancy Services',
   'Java,Spring Boot,HTML');
INSERT INTO Users (user_id, password, name, email, phone, experience, current_company, skillset)
   VALUES ('rahul.k', 'dummyPwd', 'Rahul Kanwar', 'rahul.k@relevel.com', '8877451424', 5.3,'HCL Technologies',
   'Java,Spring Boot,HTML');
INSERT INTO Users (user_id, password, name, email, phone, experience, current_company, skillset)
   VALUES ('prashanth.d', 'naukriPwd', 'Prashanth Das', 'prashanth.d@relevel.com', '8877459854', 7.5,'Oracle',
   'Java,Spring Boot,HTML');


CREATE TABLE Recruiters (
    recruiter_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name varchar(255),
    email varchar(255)
);
INSERT INTO Recruiters (name, email)
   VALUES ('Tanmay', 'tanmay.bhat@relevel.com');
   

CREATE TABLE Jobs (
   job_id INTEGER AUTO_INCREMENT PRIMARY KEY,
   recruiter_id varchar(255) references Recruiters(recruiter_id),
   company_name varchar(255),
   skillset varchar(255),
   minimum_experience INTEGER,
   maximum_experience INTEGER,
   job_description varchar(1000),
   location varchar(255),
   posted_date date
);
     
INSERT INTO Jobs (recruiter_id, company_name, skillset, minimum_experience, maximum_experience, 
job_description, location, posted_date)
values (1, 'Tata Consultancy Services', 'Java,Spring Boot', 4, 6, 'Excellent Analysis skills, Object Orientated Design skills,
          Solid Knowledge of Core Java, J2EE', 'Hyderabad', '2021-10-03');
INSERT INTO Jobs (recruiter_id, company_name, skillset, minimum_experience, maximum_experience, 
job_description, location,posted_date)
values (1, 'HCL Technologies', 'Java,Spring Boot', 4, 5, 'Excellent Analysis skills, Object Orientated Design skills,
          Solid Knowledge of Core Java, J2EE', 'Hyderabad','2021-10-01');
INSERT INTO Jobs (recruiter_id, company_name, skillset, minimum_experience, maximum_experience, 
job_description, location,posted_date)
values (1, 'ADP', 'Java,Spring Boot', 4, 7, 'Excellent Analysis skills, Object Orientated Design skills,
          Solid Knowledge of Core Java, J2EE', 'Hyderabad','2021-09-27');

CREATE TABLE JOB_APPLICATIONS (
   application_id INTEGER AUTO_INCREMENT PRIMARY KEY,
   user_id varchar(255) references Users(user_id),
   job_id INTEGER references Jobs(job_id)
);

INSERT INTO JOB_APPLICATIONS(user_id, job_id)
values ('rahul.k', 1);
INSERT INTO JOB_APPLICATIONS(user_id, job_id)
values ('rahul.k', 2);
INSERT INTO JOB_APPLICATIONS(user_id, job_id)
values ('rahul.k', 3);
INSERT INTO JOB_APPLICATIONS(user_id, job_id)
values ('prakhar.g', 1);
INSERT INTO JOB_APPLICATIONS(user_id, job_id)
values ('prashanth.d', 1);
