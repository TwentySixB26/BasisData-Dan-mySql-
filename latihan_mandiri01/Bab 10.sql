/*
	=========== BAB 10 ==========
	Fungsi agregat 
	1. SUM = jumlah semua nilai 
	2. Count = banyak nya kolom/data
	3. AVG = nilai rata rata
	4. Max = nilai terbesar 
	5. Min = nilai terkecil 
*/

SELECT MIN(jumlah_halaman) AS 'halaman paling sedikit',
Max(jumlah_halaman) AS  'halaman paling banyak',
COUNT(harga) AS 'banyak colom' ,
SUM(harga) AS 'harga semua buku',
AVG (harga) AS 'harga rata rata semua buku'
FROM buku ;
