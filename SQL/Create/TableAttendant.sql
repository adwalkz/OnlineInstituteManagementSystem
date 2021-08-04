create table Attendant
(
	AttendantID int identity(5000, 1) primary key,
	AName varchar(30) not null,
	Gender varchar(6) not null,
	DOJ date not null,
	Con1 char(10)  not null,
	Con2 char(10),
	Email varchar(320),
	Addr varchar(100) not null,
	DOB date,
	Leave char(2) not null default '12',
	DP varchar(100) not null default 'Source/img/Icon/profile.png'
)