/*
	============== BAB 20 ===============
	view part 2 
	1. hal yang tidak boleh dilakukan ketika membuat view adalah melakukan (stored procedure,having,logika,SUM,AVG DLL) 
		itu dapat menyebabkan view tidak dapat di update
	2. Algorithm (temptable dan merge) jika agar data bisa diupdate lewat view maka pilih merge
	3. Mengupdate data lewat view 
	4. menambahkan data melalui view 
	5. menghapus data lewat view , jika data yang ingin dihapus mempunyai foreign key atau relasi
		maka tidak akan bisa dihapus  
*/

-- 1. algorithm
CREATE OR REPLACE ALGORITHM = MERGE VIEW viewlatihan2
AS 
SELECT buku.nama_buku,buku.pengarang,buku.harga
FROM buku ;

SELECT * FROM viewlatihan2 ;



-- =======================================================================
-- 2. update data lewat view 
UPDATE  viewlatihan2 
SET pengarang = 'Anton S.so M.pd' 
WHERE nama_buku = 'kupas tuntas manusia purba P1' ;




-- =======================================================================
-- 3. menambahkan data lewat view 
INSERT INTO viewlatihan2 VALUES ('kupas tuntas manusia purba P3', 'Tino S.farm','82000') ;

SELECT * FROM viewlatihan2 
WHERE  nama_buku = 'kupas tuntas manusia purba P3' ;


-- =======================================================================
-- 4. menghapus data lewat view 
DELETE FROM viewlatihan2
WHERE nama_buku = 'kupas tuntas manusia purba P3' ;