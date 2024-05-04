/*--------------- BAB 1 --------------
	ADD untuk menambahkan isi tabel 
	MODIFY untuk memodifikasi isi tabel 
	DROP untuk menghapus isi tabel 
*/
 
CREATE TABLE buku (
	id_buku CHAR (10) PRIMARY KEY ,
	nama_buku VARCHAR (50),
	pengarang VARCHAR (50) , 
	penerbit VARCHAR (80)
) ;

CREATE TABLE rak (
	id_rak CHAR (10) PRIMARY KEY ,
	tempat VARCHAR (100),
	id_buku CHAR (10)
) ;

ALTER TABLE buku 
ADD penerbit VARCHAR (80) ; 


SELECT * FROM rak ;

ALTER TABLE rak 
ADD CONSTRAINT fk_idBuku_rak 
FOREIGN KEY (id_buku) 
REFERENCES buku (id_buku) ; 


CREATE TABLE toko (
	id_toko CHAR (10) ,
	alamat VARCHAR (100)
) ;

ALTER TABLE toko
ADD PRIMARY KEY (id_toko) ; 

DROP TABLE toko ; 








