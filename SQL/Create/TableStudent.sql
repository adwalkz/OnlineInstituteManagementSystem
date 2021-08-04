create table Student
(
	StudentID int identity(20200, 1) primary key,
	SName varchar(30) not null,
	Gender varchar(6) not null,
	DOA date not null,
	SClass varchar(10) not null,
	Sub varchar(30) not null,
	Batch varchar(10),
	Con1 char(10)  not null,
	Con2 char(10),
	Email varchar(320),
	Addr varchar(100) not null,
	DOB date,
	DP varchar(100) not null default 'Source/img/Icon/profile.png'
)