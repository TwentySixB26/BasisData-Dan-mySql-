/*
	======= BAB 13 ========
	JOIN berfungsi untuk mengabungkan 2 buah tabel dan untuk menampilkan hasilnya
	1. natural join 
	2. using join 
	3. inner join
	4. equi join
*/

CREATE TABLE toko_buku (
	id_toko INT (10) auto_increment PRIMARY KEY  ,
	nama_toko VARCHAR (50) ,
	alamat VARCHAR (50) 
);

INSERT INTO toko_buku (nama_toko, alamat)
VALUES ('Gramedia cirebon' , 'Cirebon kota') ,
('Rita mall' , 'Purwokerto') ;

INSERT INTO rak 
VALUES ('R03' , 'L10.A.3' , '02'),
('R04' , 'L4.A11' , '03') ,
('R05' , 'L4.A10' , '033') ,
('R06' , 'L4.A12' , '0333') ,
('R07' , 'L4.A71' , '04') ,
('R08' , 'L4.A71' , '044') ,
('R09' , 'L4.A11' , '03') ,
('R10' , 'L6.A81' , '06') ;


-- 1. natural join 
SELECT rak.tempat , buku.nama_buku , buku.pengarang ,buku.penerbit , buku.Genre ,buku.harga
FROM buku NATURAL JOIN rak ;


-- 2. using join  
SELECT rak.tempat , buku.nama_buku , buku.pengarang ,buku.penerbit , buku.Genre ,buku.harga
FROM buku JOIN rak USING(id_buku) 
ORDER BY pengarang;


-- 3 inner join 
SELECT rak.tempat , buku.nama_buku , buku.pengarang ,buku.penerbit , buku.Genre ,buku.harga
FROM buku INNER JOIN rak 
ON buku.id_buku = rak.id_buku 
ORDER BY pengarang ;

-- 4 equi join
 SELECT rak.tempat , buku.nama_buku , buku.pengarang ,buku.penerbit , buku.Genre ,buku.harga
FROM buku , rak 
WHERE  buku.id_buku = rak.id_buku 
ORDER BY pengarang ;