create table Offer
(
	OfferID int identity(3000, 1) primary key,
	OfferName varchar(30) not null,
	PromoCode varchar(20) not null,
	SDate date not null,
	EDate date not null,
	Discount varchar(5) not null
)