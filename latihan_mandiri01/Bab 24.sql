/*
	=========== BAB 24 ===========
	Stored function 
	ada dua tipe :
	1. deterministic = Data pada function menghasilkan nilai tetap / tidak akan berubah ubah
	2. not deterministic = Data pada function menghasilkan nilai yang berubah ubah contoh sum,count,rand() DLL 
*/

-- 1. Determinicsitic 
DROP FUNCTION statusHarga ;

DELIMITER $$
CREATE FUNCTION statusHarga(
	harga INT (80)
)
RETURNS varchar (10)
DETERMINISTIC 
BEGIN
	DECLARE sHarga VARCHAR (10) ;
		 
	if harga < 50000 then 
		SET sHarga = 'murah' ;
	ELSEIF harga >= 50000 AND harga < 100000 then 
		SET sHarga =  'sedang' ;
	ELSE 
		SET sHarga = 'mahal' ;
	END if ;
	RETURN sHarga;
	END $$
DELIMITER ;

SELECT buku.nama_buku ,buku.pengarang , buku.penerbit,buku.harga,statusHarga(harga)
FROM buku 
ORDER BY harga;


-- 2. NOt Determinicsitic 
DROP FUNCTION getAmountPenerbit ;

DELIMITER $$
CREATE FUNCTION getAmountPenerbit(
	penerbit VARCHAR (80) 
)
RETURNS INT 
NOT DETERMINISTIC 
BEGIN
	DECLARE penerbitAmount INT ;
		 SELECT COUNT(id_buku) INTO penerbitAmount 
		 FROM buku 
		 WHERE buku.penerbit = penerbit ;
	RETURN penerbitAmount ;
	END $$
DELIMITER ;

SELECT getAmountPenerbit('surabaya') AS jumlah_colom; 