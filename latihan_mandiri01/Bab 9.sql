/*
	======= BAB 9 =======
	kalkulasi dan alias 
	- Alias biasa ditulis AS
	- tidak bisa digunakan pada where dan pemangilan kembali  
*/


ALTER TABLE buku 
ADD harga int (80) ; 

UPDATE buku 
SET harga = 300000
WHERE penerbit = 'bandung' ;

UPDATE buku 
SET harga = 400000
WHERE penerbit = 'jakarta' ;

UPDATE buku 
SET harga = 100000
WHERE penerbit = 'malaysia' ;

UPDATE buku 
SET harga = 500000
WHERE penerbit = 'japan' ;




SELECT * , 10/100*harga AS diskon , harga-(10/100*harga) AS harga_setelah_diskon
FROM buku 
ORDER BY harga_setelah_diskon; 


SELECT * , 10/100*harga AS diskon , harga-(10/100*harga) AS harga_setelah_diskon
FROM buku 
WHERE harga-(10/100*harga)  <= 200000
ORDER BY harga_setelah_diskon;