create table Assignment
(
	AssignmentID int identity(7000, 1) primary key,
	TeacherID int not null,
	Sub varchar(30) not null,
	Class varchar(5) not null,
	Topic varchar(20) not null,
	UploadDate date not null,
	DownloadLink varchar(300) not null
)