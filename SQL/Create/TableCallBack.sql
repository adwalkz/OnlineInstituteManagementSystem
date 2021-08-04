create table CallBack
(
	CallerID int identity(9000, 1) primary key,
	CallerName varchar(30) not null,
	Contact char(10) not null,
	Date date not null,
	Reason varchar(200) default '<unknown>',
	Email varchar(320) default '<unknown>',
	Addr varchar(100) default '<unknown>'
)