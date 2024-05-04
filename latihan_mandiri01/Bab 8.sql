/*
	------------- Bab 8 -----------
	membuat range mengunakan beetwen 
	Betwen untuk befungsi untuk diantara misalnya tampilkan nilai antara 70-80 
*/


-- cara 1 
SELECT * 
FROM buku
WHERE Jumlah_halaman >= 0 AND Jumlah_halaman <= 200; 



-- cara 2 
SELECT * 
FROM buku 
WHERE Jumlah_halaman BETWEEN 200 AND 400
ORDER BY jumlah_halaman ;