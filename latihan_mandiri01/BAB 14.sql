/*
	======= BAB 14 =========
	- LEFT , RIGHT , full outher join
	- UNION digunakan untuk mengabungkan  
*/


-- 1. Left Join 
SELECT  buku.nama_buku ,rak.tempat  
FROM buku left JOIN rak 
ON buku.id_buku = rak.id_buku 
ORDER BY nama_buku ;

-- 2. Right Join
SELECT buku.nama_buku , rak.tempat 
FROM buku right JOIN rak 
ON buku.id_buku = rak.id_buku 
ORDER BY nama_buku ;


-- 3. full outher join 
SELECT  buku.nama_buku ,rak.tempat  
FROM buku left JOIN rak 
ON buku.id_buku = rak.id_buku 
UNION 
SELECT buku.nama_buku , rak.tempat 
FROM buku right JOIN rak 
ON buku.id_buku = rak.id_buku  
ORDER BY tempat;