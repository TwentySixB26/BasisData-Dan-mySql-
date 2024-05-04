/*
	---------- BAB 5 ---------
	- WHERE sama saja dengan ketika 
	- operator perbandingan : > , < , >= , <= , = , != atau <> 
*/

ALTER TABLE buku 
ADD Jumlah_halaman INT (100) ;


INSERT INTO buku 
VALUES 
		('03','Komik boboiboy vol 4','Nizam r','Malaysia' , '90') ,
		('033','Komik boboiboy vol 6','Nizam r','Malaysia' , '80'),
		('04','Komik naruto vol 256','M K','Japan' , '130') ,
		('05','Seni merayu tuhan','husein jafar','Jakarta' , '350'); 


SELECT *
FROM buku
WHERE penerbit = 'jakarta' ; 


SELECT * 
FROM buku 
WHERE Jumlah_halaman >= 200 ; 


SELECT * 
FROM buku 
WHERE Jumlah_halaman <= 200 ; 