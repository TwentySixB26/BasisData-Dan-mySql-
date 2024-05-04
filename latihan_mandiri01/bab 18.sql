/*
		======== BAB 18 =========
		stored procedure part 2
		multiple procedure (in , any ,all)
		1. in ====> berfungsi untuk mengecek colom apakah salah satu ada yang sesuai dengan operator sebelumnya 
		2. any (= , > , < , >= , <= , <>) ===> berungsi untuk mengcek salah satu nilai yang ada di stored procedure,
															atau salah satu nilai saja jika memnuhi syarat 
		3. all (= , > , < , >= , <= , <>) ===> berungsi untuk mengecek semua nilai dan nilai harus sesuai dengan yang 
															 ada di colom 
		
		
		jika single row sub query maka otomatis akan dalam satu tabel didalam sub query yang bersarang tersebut
	tapi jika sub query bersarang tersebut membutuhkan table lain maka fix masuk kedalam multiple rows sub query  
*/


CREATE TABLE tahun_terbit (
	id_tahun CHAR (10) PRIMARY KEY ,
	tahun YEAR ,
	id_buku CHAR(10) 
) ; 


INSERT INTO tahun_terbit 
VALUES ('1',2016,'01'),
			('2',2016,'02'),
			('3',2016,'011'),
			('4',2016,'08'),
			('5',2017,'022'),
			('6',2017,'0111'),
			('7',2018,'03'),
			('8',2018,'033'),
			('9',2018,'0333'),
			('10',2018,'03333'),
			('11',2018,'12'),
			('12',2019,'04'),
			('13',2019,'044'),			
			('14',2019,'0444') ; 
			
			
			
-- 1. in menampilkan nama buku yang diterbitkan pada tahun 2018
SELECT buku.nama_buku 
FROM buku 
WHERE id_buku  in (
						SELECT id_buku 
						FROM tahun_terbit
						WHERE tahun = '2018') ;

-- menampilkan nama buku yang ada di tahun_terbit 
SELECT buku.nama_buku 
FROM buku 
WHERE id_buku  in (
						SELECT id_buku 
						FROM tahun_terbit) ;						

-- menampilkan buku yang tahun terbitnya bukan 2018						
SELECT buku.nama_buku 
FROM buku 
WHERE id_buku  NOT IN (
						SELECT id_buku 
						FROM tahun_terbit
						WHERE tahun = '2018') ;



-- ==================================================================================
-- 2. Any 
-- menampilkan nama buku yang diterbitkan pada tahun 2018
SELECT buku.nama_buku 
FROM buku 
WHERE id_buku  = ANY  (
						SELECT id_buku 
						FROM tahun_terbit
						WHERE tahun = '2018') ;
												
-- menampilkan buku yang diterbitkan dibawah 2018
SELECT buku.nama_buku 
FROM buku 
WHERE id_buku  = ANY  (
						SELECT id_buku 
						FROM tahun_terbit
						WHERE tahun < '2018') ;


-- menampilkan judul buku yang penerbitnya selain di kota bandung 
SELECT buku.nama_buku 
FROM buku 
WHERE buku.penerbit <> ANY  (
							SELECT buku.penerbit 
							FROM buku 
							WHERE (buku.penerbit = 'bandung') 
						);
					
-- versi simpel						
SELECT buku.penerbit 
FROM buku 
WHERE (buku.penerbit != 'bandung') ;	


					
-- ==================================================================================
-- 3. All
-- menampilkan nama buku yang tahun terbit nya tidak diketahui 

SELECT buku.nama_buku
FROM buku 
WHERE buku.id_buku <> all (SELECT tahun_terbit.id_buku 
FROM tahun_terbit ); 


-- menampilkan judul buku yang harga nya lebih besar dari semua harga buku yang ada di bandung 
SELECT buku.nama_buku , buku.harga
FROM buku 
WHERE buku.harga > ALL (SELECT buku.harga 
						FROM buku 
						WHERE buku.penerbit='bandung' ) ;

-- cara dua
SELECT buku.nama_buku , buku.harga
FROM buku 
WHERE buku.harga > (SELECT MAX(buku.harga)
							FROM buku 
							WHERE buku.penerbit='bandung') ;

