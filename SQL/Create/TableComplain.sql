create table Complain
(
	UserType varchar(10) not null,
	UserID int not null,
	UserName varchar(30) not null,
	Date date not null,
	Issue varchar(200) not null,
	TicketID int identity(8000, 1) primary key,
	Status varchar(20) not null default 'Pending'
)