create table Notification
(
	NotificationID int identity(20200, 1) primary key,
	NotDateTime datetime not null,
	UserType varchar(30) not null,
	Detail varchar(300),
)