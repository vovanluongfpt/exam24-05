Create database quanly;
use quanly;
--Create table
create table Students (
	StudentID int primary key IDENTITY(1,1),
	Firstname varchar(255),
	Lastname varchar(255),
	ClassID int not null,
	Birthdate date,
	CONSTRAINT FK_ClassID FOREIGN KEY (ClassID) REFERENCES  Classes(ClassID)
);
create table Classes (
	ClassID int primary key IDENTITY(1,1),
	ClassName varchar(255),
	TeacherID int not null,
	CONSTRAINT FK_TeacherID FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);
create table Teachers (
	TeacherID int primary key IDENTITY(1,1),
	Firstname varchar(255),
	Lastname varchar(255),
	Subject varchar(255),
)

insert into Students( FirstName, LastName, ClassID,BirthDate) values 
('Nguyen','a',1,'2000-4-2'),
('Pham ',' b',2,'2001-5-2' ),
('bui',' c',3,'2002-06-3'),
('Vu','d',4,'2003-07-4'),
('Nguyen',' e',5,'2004-8-5'),
('Luu',' f',3,'2005-9-6'),
('Nguyen','g',2,'2006-1-2'),
('Nguyen' ,'h',1,'2007-11-7'),
('Nguyen' ,'i',5,'2008-12-9'),
('Nguyen',' k',4,'2009-1-8');
-- lớp
insert into Classes (ClassName, TeacherID) values
('A' , '1'),
('B', '1'),
('C', '2'),
('D' , '3'),
('E' , '3');
-- giaovien
insert into Teachers ( LastName, FirstName,Subject) values 
('Nguyễn' ,'Thành Vinh ','toan'),
('Lê' ,'Thị Vân Anh','ly'),
('Nguyễn',' Cẩm nhung','hoa');

--3 Data query
select * from Students
select * from Classes
select * from Teachers
--4 query condition
Select *
from Students
where YEAR(Birthdate)>=2000;
--join query
Select s.*,c.ClassName,t.Firstname,t.Lastname
From Students s
Join Classes c on c.ClassID=s.ClassID
join Teachers t on t.TeacherID=c.TeacherID
order by s.Lastname asc
--updating data
update Students
Set Firstname='Ho',Lastname='Ten'
where StudentID=3;
--Delete data
delete
from Students
where StudentID=4;


