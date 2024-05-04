/*
	================= BAB 22 ===============
	stored procedure 
	1. IN 
	2. OUT
	3. INOUt
	in out inout bisa digunakan didalam sini :
	create procedure nama_procedure (
		in id char (10) ,
		out nama varchar(50)
	)
*/

--  contoh 1 (tanpa parameter)
DELIMITER $$
	CREATE PROCEDURE getAllBuku()
	BEGIN
	    SELECT * FROM buku
		 WHERE buku.Jumlah_halaman IS NOT NULL ;
	END $$
DELIMITER ;

CALL getAllBuku() ;
SELECT * getAllBuku ;



-- ===================================================================
-- contoh 2 mengunakan parameter 
DROP PROCEDURE getAllBuku ;

DELIMITER $$
	CREATE PROCEDURE getAllBuku(
		in penerbit VARCHAR (50)
	)
	BEGIN
	    SELECT * FROM buku
		 WHERE buku.penerbit = penerbit ;
	END $$
DELIMITER ;

CALL getAllBuku('malaysia') ;




-- contoh 3 memasukan data dengan stored procedure 
-- =====================================================================
DROP PROCEDURE insertBuku ;
DELIMITER $$
	CREATE PROCEDURE insertBuku(
		id_buku CHAR (10),
		nama_buku VARCHAR (50) , 
		pengarang VARCHAR (50),
		penerbit VARCHAR (80),
		jumlah_halaman int (100),
		harga INT (80),
		genre VARCHAR (100),
		buku_sebelumnya VARCHAR (50)
	)
	BEGIN
	    INSERT INTO buku VALUES (
			id_buku,
			nama_buku , 
			pengarang ,
			penerbit , 
			jumlah_halaman , 
			harga ,
			genre ,
			buku_sebelumnya ) ; 
	END $$
DELIMITER ;

CALL latihan_mandiri01.insertBuku('666','pengabdi setan','atmojo','cikarang',320,30000,'horor','hay') ;
SELECT * FROM buku ;