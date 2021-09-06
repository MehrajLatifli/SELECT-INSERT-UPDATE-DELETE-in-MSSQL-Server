create database Academy
use Academy


--Departments

create table Departments 
(

Id int primary key IDENTITY (1,1) NOT NULL,
[Department name] nvarchar(100) NOT NULL,
Financing money NOT NULL default(0),

Check([Department name] <>' '),
UNIQUE ([Department name]),
Check(Financing>=0)

)

Insert into Academy.dbo.Departments([Department name],Financing) 
values
('Astronomy and Astrophysics', 5004400.5000),
('Computer Science', 54440000.5000),
('Biology', 5067000.5330),
('Linguistics', 5068008.5000),
('Architecture and construction', 5332000.5000),
('History and archeology', 5000001.5001),
('Physics and chemistry', 5020022.5070),
('Sociology and philosophy ', 5003300.5580)

select *from Academy.dbo.Departments




--Faculties

create table Faculties 
(

Id int primary key IDENTITY (1,1) NOT NULL,
[Dean of the Faculty] nvarchar(MAX) NOT NULL,
[Faculty name] nvarchar(100) NOT NULL,

Check([Dean of the Faculty] <>' '),
Check([Faculty name] <>' '),
UNIQUE ([Faculty name])

)

Insert into Academy.dbo.Faculties([Dean of the Faculty],[Faculty name]) 
values
('Arif Zeynalli', 'Astronomy'),
('Hasan Bagirov', 'Astrophysics'),
('Atilla Turksoy', 'Cybernetics'),
('Tomris Turksoy', 'Programming'),
('Memmed Bagirzade', 'Micro biology'),
('Sara Hasanli', 'Anatomy'),
('Elchin Bozgurt', 'Turkish languages and literature'),
('Elchin Gurses', 'German language and literature'),
('Zerife Oktayli', 'Architecture'),
('Zerife Dilqemli', 'Construction'),
('Memmed Hasanli', 'History'),
('Vasif Vahabzade', 'Archeology'),
('Kerim Kerimzade', 'Physics'),
('Yusif Mammadaliyev', 'Chemistry'),
('Meryem İsagzade', 'Sociology'),
('Mirza Fatali Akhundov', 'Philosophy')

select *from Academy.dbo.Faculties




--Groups

create table Groups 
(

Id int primary key IDENTITY (1,1) NOT NULL,
[Group name]  nvarchar(10) NOT NULL,
[Group rating] int NOT NULL,
[Year] int NOT NULL,

Check([Group name]  <>' '),
UNIQUE ([Group name]),
Check([Group rating]>=0 AND [Group rating]<=5),
Check([Year]>=1 AND [Year]<=5)

)


Insert into Academy.dbo.Groups([Group name],[Group rating],[Year]) 
values
('A1-001234',5,2),
('A1-031925',5,3),
('A2-021536',4,4),
('A2-031429',5,3),
('C1-044234',5,4),
('C1-044227',5,1),
('C2-025235',4,2),
('C2-031549',5,4),
('B1-091939',5,2),
('B1-091229',4,1),
('B2-051537',5,2),
('B2-063223',5,3),
('L1-041435',4,4),
('L1-021624',5,4),
('L2-071894',5,2),
('L2-091239',5,1),
('AC1-061527',4,3),
('AC1-027771',5,2),
('AC2-019224',5,3),
('AC2-031224',5,4),
('HA1-061527',5,1),
('HA1-027771',5,2),
('HA2-019224',4,4),
('HA2-031224',5,3),
('PC1-041527',5,2),
('PC1-055671',5,2),
('PC2-067294',4,1),
('PC2-078234',5,3),
('SP1-061526',5,1),
('SP1-027871',4,4),
('SP2-019224',5,3),
('SP2-031227',5,2),
('XYX1-00123',3,5),
('XYX1-00122',4,5),
('XYX2-00132',3,5),
('XYX2-00322',3,5),
('XYX1-00933',3,5),
('XYX1-00142',4,5),
('XYX2-00192',3,5),
('XYX2-00392',4,5)

select *from Academy.dbo.Groups




--Teachers

create table Teachers 
(

Id int primary key IDENTITY (1,1) NOT NULL,
[Teacher's name]  nvarchar(max) NOT NULL,
[Teacher's surname]  nvarchar(max) NOT NULL,
EmploymentDate date NOT NULL,
IsAssistant bit  NOT NULL default(0),
IsProfessor bit  NOT NULL default(0),
[Teacher's position]  nvarchar(max) NOT NULL,
[Teacher's premium] money NOT NULL default(0),
[Teacher's salary] money NOT NULL default(0),

Check([Teacher's name] <>' '),
Check([Teacher's surname] <>' '),
Check(EmploymentDate >='1990-01-01'),
Check([Teacher's position] <>' '),
Check([Teacher's premium]>=0),
Check([Teacher's salary]>0)

)

Insert into Academy.dbo.Teachers([Teacher's name],[Teacher's surname],EmploymentDate,IsAssistant,IsProfessor,[Teacher's position],[Teacher's premium],[Teacher's salary]) 
values
('Oktay','Shiraliyev','2000-01-05',1,0,'Astronomy teacher',250,750),
('Orkhan','Hasanov','1993-03-05',0,1,'Astronomy teacher',555,1000),
('Mahir','Mahirli','2001-07-19',1,0,'Astrophysics teacher',250,750),
('Ilgar','Hasanov','1992-02-15',0,1,'Astrophysics teacher',555,1000),
('Zerife','Isagzade','2000-07-07',1,0,'Cybernetics teacher',250,1200),
('Muhammad','Islamli','1993-05-15',0,1,'Cybernetics teacher',700,2210),
('Tehmine','Zaurlu','2002-08-06',1,0,'Programming teacher',250,1200),
('Zaur','Coshgunlu','1991-12-17',0,1,'Programming teacher',700,2210),
('Nigar','Shushinski','2002-01-17',1,0,'Micro biology teacher',250,950),
('Mehdi','Ceferli','1993-01-11',0,1,'Micro biology teacher',700,1250),
('Fazil','Agdamli','2003-07-20',1,0,'Anatomy teacher',250,850),
('Zernishan','Derbendli','1990-05-15',0,1,'Anatomy teacher',700,1250),
('Teravet','Shirvanli','2002-01-05',1,0,'Turkish languages and literature teacher',350,750),
('Terlan','Turk','1990-03-11',0,1,'Turkish languages and literature teacher',700,1250),
('Veli','Velizade','2002-09-07',1,0,'German language and literature teacher',350,750),
('Heydar','Qaralı','1990-09-15',0,1,'German language and literature teacher',700,1250),
('Pasha','Qarayev','2001-01-27',1,0,'Architecture teacher',250,750),
('Gunel','Sabirli','1990-10-11',0,1,'Architecture teacher',750,1250),
('Zahide','Oruclu','2001-12-01',1,0,'Construction teacher',250,750),
('Ozan','Efendli','1990-08-12',0,1,'Construction teacher',800,1250),
('Konul','Kazımzade','2001-04-07',1,0,'History teacher',250,750),
('Kazim','Mammadli','1990-07-14',0,1,'History teacher',700,1250),
('Nadir','Zengilanli','1999-10-11',1,0,'Archeology teacher',250,750),
('Sara','Tabrizli','1990-11-25',0,1,'Archeology teacher',700,1250),
('Sabina','Ardabilli','2002-05-17',1,0,'Physics teacher',350,750),
('Fazail','Garadagli','1990-09-29',0,1,'Physics teacher',750,1250),
('Qorxmaz','Qoxmazli','2003-02-08',1,0,'Chemistry teacher',350,750),
('Chichek','Aydinli','1990-09-05',0,1,'Chemistry teacher',750,1250),
('Inci','Karsli','2000-08-17',1,0,'Sociology teacher',400,750),
('Elmeddin','Elchibey','1990-01-02',0,1,'Sociology teacher',700,1250),
('Mədinə','ZamanGuluzade','1999-09-09',1,0,'Philosophy teacher',350,750),
('Aydan','Tatar','1990-10-10',0,1,'Philosophy teacher',700,1250)

select *from Academy.dbo.Teachers




-- Print departments table but arrange its fields in the reverse order.

select *from Academy.dbo.Departments Order by Academy.dbo.Departments.[Department name] DESC




-- Print  group  names  and  their  ratings  using  “Group  Name” and “Group Rating”, respectively, as names of the fields.

select  Academy.dbo.Groups.[Group name] as [Group Name], Academy.dbo.Groups.[Group rating] as [Group Rating] from Academy.dbo.Groups




-- Print for the teachers their surname, percentage of wage rate to premium ratio and percentage of wage rate to the salary ratio (the amount of wage rate and premium).

select 
Academy.dbo.Teachers.[Teacher's surname], 
100 * Academy.dbo.Teachers.[Teacher's premium] / (Academy.dbo.Teachers.[Teacher's salary] + Academy.dbo.Teachers.[Teacher's premium]) as [Percentage of wage rate to premium],
100 * Academy.dbo.Teachers.[Teacher's salary] / (Academy.dbo.Teachers.[Teacher's salary] + Academy.dbo.Teachers.[Teacher's premium]) as [Percentage of wage rate to salary]
from Academy.dbo.Teachers 




-- Print the faculty table as a single field in the following format: "The dean of faculty [faculty] is [dean]".

select ' The dean of ' + Academy.dbo.Faculties.[Faculty name] + ' is ' + Academy.dbo.Faculties.[Dean of the Faculty] as [Faculty Table] from Academy.dbo.Faculties 




-- Identify names of the teachers who are professors and whose wage rate exceeds 1050.

select Academy.dbo.Teachers.[Teacher's name] 
from  Academy.dbo.Teachers 
where Academy.dbo.Teachers.[Teacher's premium]+Academy.dbo.Teachers.[Teacher's salary] >1050 AND Academy.dbo.Teachers.IsProfessor=1 




-- Print names of the departments whose funding is less than 11,000 or more than 25,000.

select Academy.dbo.Departments.[Department name] 
from  Academy.dbo.Departments 
where Academy.dbo.Departments.Financing <11000 OR Academy.dbo.Departments.Financing >25000




-- Print names of faculties other than Computer Science.

select Academy.dbo.Faculties.[Faculty name]
from Academy.dbo.Faculties 
where Academy.dbo.Faculties.[Faculty name] <>'Computer Science'




-- Print names and positions of teachers who are not professors.

select Academy.dbo.Teachers.[Teacher's name]
from Academy.dbo.Teachers 
where Academy.dbo.Teachers.IsProfessor <>1 OR Academy.dbo.Teachers.IsAssistant=1




-- Print surnames, positions, wage rates, and premia of assistants whose premium is in the range from 160 to 550.

select 
Academy.dbo.Teachers.[Teacher's surname], 
100 * Academy.dbo.Teachers.[Teacher's premium] / (Academy.dbo.Teachers.[Teacher's salary] + Academy.dbo.Teachers.[Teacher's premium]) as [Percentage of wage rate to premium],
100 * Academy.dbo.Teachers.[Teacher's salary] / (Academy.dbo.Teachers.[Teacher's salary] + Academy.dbo.Teachers.[Teacher's premium]) as [Percentage of wage rate to salary]
from Academy.dbo.Teachers 
where Academy.dbo.Teachers.IsAssistant=1 AND (Academy.dbo.Teachers.[Teacher's premium]>160 OR Academy.dbo.Teachers.[Teacher's premium]<550)




-- Print surnames and wage rates of assistants.

select 
Academy.dbo.Teachers.[Teacher's surname], 
100 * Academy.dbo.Teachers.[Teacher's premium] / (Academy.dbo.Teachers.[Teacher's salary] + Academy.dbo.Teachers.[Teacher's premium]) as [Percentage of wage rate to premium],
100 * Academy.dbo.Teachers.[Teacher's salary] / (Academy.dbo.Teachers.[Teacher's salary] + Academy.dbo.Teachers.[Teacher's premium]) as [Percentage of wage rate to salary]
from Academy.dbo.Teachers 
where Academy.dbo.Teachers.IsAssistant=1




-- Print surnames and positions of the teachers who were hired before 01.01.2000.

select 
Academy.dbo.Teachers.[Teacher's surname], 
Academy.dbo.Teachers.[Teacher's position]
from Academy.dbo.Teachers 
where Academy.dbo.Teachers.EmploymentDate <'2000-01-01'




-- Print names of the departments in alphabetical order up. The  output  field should be named "Name of Department".

select Academy.dbo.Departments.[Department name] as [Name of Department]  from Academy.dbo.Departments Order by Academy.dbo.Departments.[Department name] ASC 




-- Print names of the assistants whose salary (amount of wage rate and premium) is not more than 1200.

select Academy.dbo.Teachers.[Teacher's name] from Academy.dbo.Teachers where Academy.dbo.Teachers.IsAssistant=1 AND Academy.dbo.Teachers.[Teacher's salary]<1200




-- Print names of groups of the 5th year whose rating is in the range from 2 to 4.

select TOP(5) Academy.dbo.Groups.[Group name]
from Academy.dbo.Groups
where Academy.dbo.Groups.[Year]=5 AND (Academy.dbo.Groups.[Group rating] >= 2 AND Academy.dbo.Groups.[Group rating] <= 4)




--Update

Update Academy.dbo.Teachers
set Academy.dbo.Teachers.[Teacher's premium] ='190',  Academy.dbo.Teachers.[Teacher's salary] ='810'
where Academy.dbo.Teachers.[Teacher's position] ='Astronomy teacher'

select *from Academy.dbo.Teachers where Academy.dbo.Teachers.IsAssistant=1




-- Print names of assistants whose wage rate is less than 550 or premium is less than 200.

select Academy.dbo.Teachers.[Teacher's name]
from Academy.dbo.Teachers
where Academy.dbo.Teachers.IsAssistant=1 AND (Academy.dbo.Teachers.[Teacher's salary] + Academy.dbo.Teachers.[Teacher's premium] < 550 OR Academy.dbo.Teachers.[Teacher's premium] <200)




-- Delete 

DELETE from Academy.dbo.Teachers where Academy.dbo.Teachers.IsProfessor=1;
select *from Academy.dbo.Teachers