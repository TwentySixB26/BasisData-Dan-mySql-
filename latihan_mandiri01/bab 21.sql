/*
	========== BAB 21 ===========
	view part 3
	WIth check option berfungsi jika ada where di view dengan ketentuan-ketentuan tertentu data yang tidak masuk 
	kedalam ketentuan tersbut tidak akan diekseskusi  
*/



/* 1. jika tidak memakai with check option maka data akan tetap berhasil di eksekusi walaupun masuknya ke dalam tabel
lain dan bukan masuk kedalam view */

CREATE OR REPLACE VIEW viewlatihan3 
AS 
SELECT buku.id_buku, buku.nama_buku ,buku.pengarang,buku.penerbit,buku.harga 
FROM buku 
WHERE buku.penerbit = 'bandung' ;

SELECT * FROM  viewlatihan3 ;
 
/* memasukan data lewat view,maka data tersebut ttp bisa di eksekusi tapi tidak akan ada di viewlatihan3 hanya 
ada di tabel buku.
kita juga tidak akan bisa mengupdate atau melakukan delete data tersebut lewat view 
*/
INSERT INTO viewlatihan3 VALUES ('si kancil', 'Kukuh arr','jakarta','40000') ;

SELECT * FROM buku ;



/* cara menghandle hal tersebut agar tidak terjadi maka gunakan with check option maka data yang ingin 
dimasukan lewat view tidak akan di eksekusi
*/
CREATE OR REPLACE VIEW viewlatihan3 
AS 
SELECT buku.id_buku, buku.nama_buku ,buku.pengarang,buku.penerbit,buku.harga
FROM buku 
WHERE buku.penerbit = 'bandung' 
WITH CHECK OPTION ;

INSERT INTO viewlatihan3 VALUES ('888','si kancil part 4', 'Kukuh arr','jakarta','40000') ;
INSERT INTO viewlatihan3 VALUES ('999','si kancil part 2', 'Kukuh arr','bandung','40000') ;

SELECT * FROM buku ;
SELECT * FROM viewlatihan3 ;

UPDATE viewlatihan3
SET harga = '70000'
WHERE id_buku = '999' ;

DELETE FROM viewlatihan3
WHERE id_buku = '999' ;