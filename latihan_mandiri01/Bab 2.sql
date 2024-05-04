
/* ---------------- BAB 2 ----------- 
	INSERT INTO untuk mengisi suatu nilai DATA
	Update digunakan untuk mengupdate suatu nilai data  
	SET untuk menganti isi suatu nilai Data
	WHERE Digunakan untuk operasi
	DELETE digunkan untuk menghapus
	
	Catatan : untuk menganti isi data mengunakan Alter table tapi jika ingin menganti value isi suatu data mengunakan 
	update  
	
	Catatan : ketika update tidak perlu pakai from tapi ketika delete wajib pakai from
*/

INSERT INTO buku 
VALUES 
		('01','Dilan 1990','Pidi baiq','Bandung'),
		('011','Dilan 1991' ,'Pidi baiq','Bandung' ),
		('02','Dear nathan' , 'Erisca feb' , 'Jakarta' ) ,
		('022','Dear nathan : hello salma' , 'Erisca feb' , 'Bekasi' ) ; 

INSERT INTO rak  
VALUES 
		('R01','L1.A10','01') ,
		('R02','L2.A1','02') ;


UPDATE buku 
SET penerbit = 'Jakarta'
WHERE id_buku = '022' ;


INSERT INTO buku 
VALUES 
		('03','Komik boboiboy','Nizam r','malaysia') ;
		
UPDATE buku 
SET pengarang = 'Monsta'
WHERE id_buku = '03' ;


DELETE FROM buku 
WHERE id_buku = '03' ;

UPDATE buku
SET id_buku = '002' 
WHERE id_buku = '022' ; 