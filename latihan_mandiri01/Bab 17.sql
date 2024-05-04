/*
	============== BAB 17 ============
	STORED PROCEDURE Part 1 
	
	single row sub query adalah select bersarang atau ada syntax select di dalam select 
	jika single row sub query maka otomatis akan dalam satu tabel didalam sub query yang bersarang tersebut
	tapi jika sub query bersarang tersebut membutuhkan table lain maka fix masuk kedalam multiple rows sub query  
*/

-- ==========================================================
SELECT * 
FROM buku 
WHERE buku.harga < (SELECT harga 
							FROM buku 
							where buku.id_buku = '01')
ORDER BY buku.harga;


-- ==========================================================
SELECT * 
FROM buku 
WHERE buku.harga > (SELECT harga 
							FROM buku 
							where buku.id_buku = '01')
ORDER BY buku.harga;


-- ==========================================================
SELECT * 
FROM buku 
WHERE buku.harga = (SELECT harga 
							FROM buku 
							where buku.id_buku = '01')
ORDER BY buku.harga;


-- ==========================================================