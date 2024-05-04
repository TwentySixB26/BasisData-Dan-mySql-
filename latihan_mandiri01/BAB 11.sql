/*
	======= BAB 11 ========
	Fungsi agregat part 2
	1. Group by berfungsi untuk  menghasilkan tabel dengan rekaman 
	yang dikelompokkan berdasarkan nilai pada satu atau beberapa kolom.
*/

SELECT penerbit , COUNT(harga) AS 'banyak colom' 
FROM buku 
GROUP BY penerbit;

INSERT INTO buku 
VALUE ('07','Tips jitu CPNS' , 'Team' , 'Malang',890, 580000, 'pendidikan'),
		('08','Resep membuat empal gentong' , 'Chef Apud' , 'Cirebon',130, 90000, 'Food'),
		('09','Sejarah perang surabaya' , 'Team unesa' , 'Surabaya',320, 70000, 'sejarah'),
		('10','kupas tuntas manusia purba P1' , 'Team' , 'Gresik' ,200, 80000, 'sejarah'),
		('101','kupas tuntas manusia purba P2' , 'Team' , 'Gresik' ,140, 80000, 'sejarah');

SELECT penerbit ,Genre ,COUNT(harga) AS 'banyak colom' 
FROM buku 
GROUP BY Genre,penerbit
ORDER BY penerbit;


