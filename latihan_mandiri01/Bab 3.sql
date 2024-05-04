/* ---------------- BAB 3 --------------
	DELETE digunakan untuk menghapus ; 
	ketika tabel barang melakukan foreigen key terhadap tabel barang maka tabel kategori maka jika 
	kita ingin menghapus tabel kategori yang sudah mempunyai relasi dalam value isi dari suatu tabel tersebut akan 
	terjadi eror dengan kata lain kita tidak menghapus nya,cara agar bisa menghapus nya ada dua yaitu :
	1. Set null, maka jika data dihapus/diubah data yang berelasi akan mengahasilkan nilai null 
	2. cascade, jika data dihapus maka data yang berlesi akan ikut terhapus tapi jika isi dari data 
	   trsbut diganti maka data yang berleasi akan ikut terganti 
	   
	   
	contoh sytax : 
	on delete set null/cascade 
	on update set null/cascede
*/ 



/* 1. menghapus secara biasa */
INSERT INTO buku 
VALUES 
		('03','Komik naruto','M K','japan') ; 
		
DELETE FROM buku 
WHERE id_buku = '03' ;




/* 2. menghapus mengunakan set null */
INSERT INTO buku 
VALUES 
		('03','Komik naruto','M K','Japan'),
		 ('04','Komik boboiboy galaxy S1','Monsta','Malaysia'),
		 ('044','Komik boboiboy galaxy S2','Monsta','Malaysia'); 
		 
		 
INSERT INTO rak 
VALUES ('R03','L3.A20','03') ,
			('R04','L4.A22','04') ,
			('R05','L5.A20','044') ;
			
			
ALTER TABLE rak  
DROP CONSTRAINT fk_idBuku_rak;

SHOW CREATE TABLE rak ;

ALTER TABLE rak 
ADD CONSTRAINT fk_idBuku_rak 
FOREIGN KEY (id_buku) 
REFERENCES buku (id_buku)
ON DELETE SET NULL 
ON UPDATE SET NULL ; 


DELETE FROM buku 
WHERE id_buku = '03' ; 

UPDATE buku 
SET penerbit = 'Kuala lumpur' 
WHERE id_buku = '04' ;


UPDATE buku 
SET id_buku = '019' 
WHERE id_buku = '04' ;

DELETE FROM rak 
WHERE (id_rak = 'R03') ;

DELETE FROM rak 
WHERE id_rak  IN ('R04' , 'R05') ;

DELETE FROM buku
WHERE id_buku  IN ('019' , '044') ;




/* 3. menghapus mengunakan casscade */
INSERT INTO buku 
VALUES 
		('03','Komik naruto','M K','Japan'),
		 ('04','Komik boboiboy galaxy S1','Monsta','Malaysia'),
		 ('044','Komik boboiboy galaxy S2','Monsta','Malaysia'); 
		 
		 
INSERT INTO rak 
VALUES ('R03','L3.A20','03') ,
			('R04','L4.A22','04') ,
			('R05','L5.A20','044') ;
			
			
ALTER TABLE rak  
DROP CONSTRAINT fk_idBuku_rak;


ALTER TABLE rak 
ADD CONSTRAINT fk_idBuku_rak 
FOREIGN KEY (id_buku) 
REFERENCES buku (id_buku)
ON DELETE Cascade
ON UPDATE CASCADE  ; 


DELETE FROM buku 
WHERE id_buku = '03' ; 


UPDATE buku 
SET id_buku = '019' 
WHERE id_buku = '04' ;


DELETE FROM rak 
WHERE id_rak  IN ('R04' , 'R05') ;

DELETE FROM buku
WHERE id_buku  IN ('019' , '044') ;