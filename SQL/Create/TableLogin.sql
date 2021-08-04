create table Login
(
	UserType varchar(10) not null,
	UserID int not null unique,
	UserName varchar(30) not null unique,
	UserPassword varchar(8) not null
)