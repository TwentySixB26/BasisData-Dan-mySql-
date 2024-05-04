/*
	====== BAB 12 =======
	having dan where
	- Having digunakan jika ada suatu fungsi agregat dan juga yang ada didalam grup by 
*/

SELECT buku.nama_buku ,
buku.pengarang , 
buku.penerbit , 
buku.harga , 
50/100 * buku.harga AS diskon ,
harga - 50/100 * buku.harga AS harga_setelah_diskon 

FROM buku
WHERE penerbit != 'bandung'
HAVING 50/100 * buku.harga >= 100000
ORDER BY harga_setelah_diskon ; 





SELECT penerbit ,Genre ,COUNT(harga) AS 'banyak colom' 
FROM buku 
GROUP BY Genre,penerbit
HAVING COUNT(*) >= 2
ORDER BY penerbit;