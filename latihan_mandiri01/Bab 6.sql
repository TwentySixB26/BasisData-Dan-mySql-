/*
	------ BAB 6 --------
	Operator Logika :
	1. AND (nilai harus benar semua)
	2. OR (nilai benar minimal 1)
	3. NOT (nilai yang salah)
	
	IN dapat digunakan untuk logika OR tapi tipe nilai harus sama 
*/

-- 1 AND  
SELECT * 
FROM buku 
WHERE penerbit = 'Bandung' AND id_buku = '01' ; 

SELECT * 
FROM buku 
WHERE penerbit = 'Jakarta' AND pengarang = 'Erisca Feb' ; 


-- 2 OR 
SELECT * 
FROM buku 
WHERE penerbit = 'jakarta' OR penerbit = 'bandung' ; 


SELECT * 
FROM buku 
WHERE penerbit IN ('jakarta','bandung') ;

SELECT * 
FROM buku 
WHERE penerbit='bandung' OR pengarang='husein jafar' ;


-- 3 NOT
SELECT * 
FROM buku 
WHERE NOT penerbit = 'jakarta' ;

SELECT * 
FROM buku 
WHERE NOT penerbit != 'jakarta' ;