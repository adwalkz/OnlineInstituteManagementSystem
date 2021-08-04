insert into Notification (NotDateTime, UserType, Detail) values
(
	convert(varchar, GETDATE(), 109),
	'All',
	'Due to security reasons Institute will remain close for today. Classes will resume from tomorrow.'
)