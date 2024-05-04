/*
	============= BAB 15 =============
	SELFT JOIN atau join kepada diri sendiri 
*/

SELECT bukuL.nama_buku AS 'Buku_Sekarang' , bukuB.nama_buku AS 'Buku_Sebelumnya'
FROM buku bukuL   INNER JOIN buku bukuB  
ON bukuL.buku_sebelumnya = bukuB.nama_buku 
ORDER BY Buku_Sekarang;
