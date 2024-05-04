/*
	========== BAB 19 ========= 
	view part 1  
	or replace digunakan untuk menganti atau mengupdate view,tapi jika tabel tersebut belum ada maka
	akan dibuat baru 
	syntax membuat view : create view nama_view as select atau statement
*/

-- 1. Cara membuat view 
-- jika didalam data buku dan rak ada yang diupdate atau di hapus maka di view akan otomatis berubah
CREATE VIEW  viewLatihan1 AS 
SELECT buku.nama_buku , buku.pengarang , buku.harga , rak.tempat
FROM buku INNER JOIN rak 
ON buku.id_buku = rak.id_buku ;

-- 2 cara mengupdate view
CREATE or replace VIEW  viewLatihan1 AS 
SELECT buku.nama_buku , buku.pengarang , buku.harga , rak.tempat, 50/100*buku.harga AS diskon 
FROM buku INNER JOIN rak 
ON buku.id_buku = rak.id_buku ;

CREATE or replace VIEW  viewLatihan1 AS 
SELECT buku.nama_buku , buku.pengarang , buku.harga , rak.tempat, 
50/100*buku.harga AS diskon, buku.harga - 50/100*buku.harga AS 'Harga_sekarang'
FROM buku INNER JOIN rak 
ON buku.id_buku = rak.id_buku ;


-- 3. cara memangil view 
SELECT * FROM viewlatihan1 ;

SELECT nama_buku ,harga, diskon , harga_sekarang FROM viewlatihan1 ;



-- 4. cara menghapus view 
DROP VIEW viewlatihan1 ;