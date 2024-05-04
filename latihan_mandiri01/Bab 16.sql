/*
	======== BAB 16 =========
	CROSS join , union , minus 
	1. Cross join digunakan menampilkan semua data dengan beberapa kemungkinan walaupun data itu tidak saling
	   berelasi 
	2. union berfungsi untuk mengabungkan dua buah tabel 
		-  Union = tidak ada data yang double,data yang double atau lebih tidak akan ditampilkan 
		-  union all = data yang double atau lebih tetap ditampilkan 
	3. minus dapat berarti yang bukan atau yang bernilai null 
		- is null digunakan jika data yang ingin tampil bernilai null
		- is not null digunakan jika data yang ingin tampil bukan yang bernilai null 
*/


-- 1. cross join 
SELECT rak.tempat, rak.id_buku ,toko_buku.nama_toko,toko_buku.alamat
FROM rak CROSS JOIN toko_buku ;

SELECT rak.tempat, rak.id_buku ,toko_buku.nama_toko,toko_buku.alamat
FROM rak CROSS JOIN toko_buku 
WHERE id_buku IS NOT NULL ;

SELECT rak.tempat, rak.id_buku ,toko_buku.nama_toko,toko_buku.alamat
FROM rak CROSS JOIN toko_buku 
WHERE id_buku IS NULL ;



-- 2. union 
SELECT  buku.nama_buku ,rak.tempat  
FROM buku left JOIN rak 
ON buku.id_buku = rak.id_buku ; 

-- ========================================
SELECT  buku.nama_buku ,rak.tempat  
FROM buku RIGHT  JOIN rak 
ON buku.id_buku = rak.id_buku ;

-- ========================================
SELECT  buku.nama_buku ,rak.tempat  
FROM buku left JOIN rak 
ON buku.id_buku = rak.id_buku 
UNION 
SELECT buku.nama_buku , rak.tempat 
FROM buku right JOIN rak 
ON buku.id_buku = rak.id_buku  
ORDER BY tempat;

-- ========================================
SELECT  buku.nama_buku ,rak.tempat  
FROM buku left JOIN rak 
ON buku.id_buku = rak.id_buku 
UNION ALL 
SELECT buku.nama_buku , rak.tempat 
FROM buku right JOIN rak 
ON buku.id_buku = rak.id_buku  
ORDER BY tempat;


-- 3. minus 
SELECT rak.tempat , buku.nama_buku
FROM rak left JOIN buku 
ON rak.id_buku = buku.id_buku
WHERE buku.nama_buku IS NULL ;

SELECT rak.tempat , buku.nama_buku
FROM rak RIGHT  JOIN buku 
ON rak.id_buku = buku.id_buku
WHERE rak.tempat IS NULL ;