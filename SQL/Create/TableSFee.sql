create table SFee
(
	StudentID int primary key,
	SubFee varchar(10) not null,
	FMode varchar(20) not null,
	NOI varchar(5) not null,
	FStatus varchar(20) not null default 'Not Complete'
)