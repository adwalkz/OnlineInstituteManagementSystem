create table Attendance
(
	AttDate date not null,
	Slot varchar(10) not null,
	TeacherID varchar(10) not null,
	SClass varchar(10) not null,
	Batch varchar(10) not null,
	Subject varchar(10) not null,
	StudentID int not null,
	SAtt varchar(2) default 'A'
)