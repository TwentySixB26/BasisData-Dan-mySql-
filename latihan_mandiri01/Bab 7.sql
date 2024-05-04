/*
	---- BAB 7 -----
	LIKE = berfungsi untuk mengetahui huruf atau kata setelah maupun sesudah 
	
	% = digunakan untuk mengecek apakah ada kata atau huruf setelah maupun sesudahnya dari 0- tanpa batas
	contoh : 
	%AJI% maka = Bayu aji nugroho , bayu aji , aji nugroho
	%Aji maka = Bayu aji 
	aji% = aji nugroho 
	
	_  = digunakan mengecek ada berapa huruf per huruf 
	contoh : 
	_ji = Aji (benar) aaaaji (salah)
	_ _ _ ji= aaaji (benar) abcji (benar) aaaaaaji(salah)
*/

-- 1. % 
SELECT * 
FROM buku 
WHERE  pengarang LIKE "%Baiq%" ; 

SELECT * 
FROM buku 
WHERE  pengarang LIKE "%Baiq" ;

SELECT * 
FROM buku 
WHERE  id_buku LIKE "%2" ;


SELECT * 
FROM buku 
WHERE  nama_buku LIKE "%boboiboy%" ;



-- 2 _
SELECT * 
FROM buku 
WHERE  pengarang LIKE "%_aiq" ;


SELECT * 
FROM buku 
WHERE  id_buku LIKE "0__" ;

SELECT * 
FROM buku 
WHERE  nama_buku LIKE "s__i%" ;

SELECT * 
FROM buku 
WHERE  nama_buku LIKE "s__i%" OR  id_buku LIKE "0__"  ;