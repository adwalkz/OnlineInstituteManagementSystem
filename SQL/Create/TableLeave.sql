create table Leave
(
	UserType varchar(10) not null,
	UserID int not null,
	UserName varchar(30) not null,
	FromDate date not null,
	ToDate date not null,
	Reason varchar(100) not null,
	LStatus varchar(10) not null default 'Pending'
)