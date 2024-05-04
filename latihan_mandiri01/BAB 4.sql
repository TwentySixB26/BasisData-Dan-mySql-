/* ------------- BAB 4 ------------
	- Select digunakan untuk menampilkan suatu data ;
	- Distinct digunakan untuk menampilkan data satu saja,jadi jika ada data yang sama tidak 
	akan ditampilkan dua kali ;
   - order by digunakan untuk mengurutkan suatu data :
   Desc digunakan untuk mengurutkan dari besar ke kecil 
   Asc digunkan untuk mengurutkan dari kecil ke besar (default) ;
*/


/* 1. Select */
SELECT * FROM rak ; 

SELECT nama_buku,pengarang
FROM buku ; 

SELECT buku.nama_buku,buku.pengarang,rak.tempat
FROM buku 
INNER JOIN rak 
ON buku.id_buku = rak.id_buku;


/* 2. Distinct  */
SELECT distinct pengarang
FROM buku; 


/* order by */
SELECT * 
FROM buku 
ORDER BY penerbit, nama_buku DESC ; 