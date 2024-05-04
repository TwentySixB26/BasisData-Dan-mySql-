/*
	================== BAB 23 =================
	Stored procedure part2 (Out,Inout) 
*/

-- 1. Out
DELIMITER $$
	CREATE PROCEDURE getAmountPenerbitBuku(
		in penerbit VARCHAR (50),
		OUT amount INT 
	)
	BEGIN
	    SELECT COUNT(penerbit) INTO amount
		 FROM buku
		 WHERE buku.penerbit = penerbit ;
	END $$
DELIMITER ;

CALL getAmountPenerbitBuku('malang',@jumlah) ;
SELECT @jumlah AS 'Banyaknya_buku' ;



-- =========================================================================
-- 2.INOUT 
DELIMITER $$
	CREATE PROCEDURE ubahHarga(
		INOUT harga INT (80)
	)
	BEGIN
			if harga <90000 then 
				SET harga = 100000 ;
			END if ; 
	END $$
DELIMITER ;


SELECT harga INTO @hrg 
FROM buku 
WHERE buku.id_buku = '12' ;

CALL ubahHarga(@hrg) ;

-- contoh 1 tampilkan data
SELECT @hrg AS harga ;


-- ============================================================================
-- contoh 2 tampilkan data (where harus sama dengan *select harga INTO @hrg*)
SELECT buku.nama_buku,@hrg 
AS harga 
FROM buku 
WHERE buku.id_buku = '12';