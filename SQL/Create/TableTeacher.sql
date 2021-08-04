create table Teacher
(
	TeacherID int identity(1000, 1) primary key,
	TName varchar(30) not null,
	Gender varchar(6) not null,
	DOJ date not null,
	Sub varchar(30) not null,
	Con1 char(10)  not null,
	Con2 char(10),
	Email varchar(320),
	Addr varchar(100) not null,
	DOB date,
	Leave char(2) not null default '12',
	DP varchar(100) not null default 'Source/img/Icon/profile.png'
)