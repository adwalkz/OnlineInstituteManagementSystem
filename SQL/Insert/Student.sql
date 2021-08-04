insert into Student (SName, Gender, DOA, SClass, Sub, Batch, Con1, Con2, Email, Addr, DOB) values
(
	'Aditya Jain',
	'male',
	GETDATE(),
	'XII',
	'Physics , Chemistry , Maths',
	'1',
	'8448704414',
	'8368228666',
	'aditya.jain.210899@gmail.com',
	'B-69, Delhi-110051',
	'1999-08-21'
)

--update Student set RollNo = Concat('20', CONCAT(SClass, StudentID)) where StudentID = 20201