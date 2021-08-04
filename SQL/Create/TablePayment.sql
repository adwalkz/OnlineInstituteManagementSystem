create table Payment
(
	PaymentID int identity(150000, 1) primary key,
	StudentID varchar(10) not null,
	PayDate date not null,
	PaymentType varchar(10) not null,
	OfferApplied varchar(20) not null,
	PaidAmount varchar(10) not null
)