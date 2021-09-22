-- Urunler tablosundaki tum kayitlari getiren sorgu
SELECT * FROM Urunler

-- Urunler Tablosunda urun adi, birim fiyatu ve yeni satis gosteren sorgu	
SELECT UrunAdi, BirimFiyati, YeniSatis from Urunler

-- Urunler Tablosundaki ilk 10 kaydi gosteren sorgu
SELECT Top 10 * from Urunler

-- Urunler tablosundaki ilk 20 kaydin Urun Adi ve birim fiyatini getiren sorgu
SELECT Top 20 UrunAdi, BirimFiyati, HedefStokDuzeyi from Urunler

-- Urun ID si 12 olan urunun tum bilgilerini goruntule
Select * From Urunler Where UrunID = 12

-- Urun ID si 12,25,27,51 urunlerinin tum bilgilerini getir
Select * from Urunler where UrunID in (12,25,27,51)

-- Birim fiyati 30 ile 80 arasinda olan urunleri getir
Select * from Urunler where BirimFiyati>30 and BirimFiyati < 80

Select * from Urunler where BirimFiyati between 30 and 80

-- Kategori ID si 1 veya 2 olanlari goruntule
Select * from Urunler where KategoriID = 1 or KategoriID = 2

-- Urun Adi  A harfi ile baslayanlari getir
Select * from Urunler where UrunAdi like 'a%'

-- Urun adinda a harfi gecen urunlerin tum bilgilerini getir
Select * from Urunler where UrunAdi like '%a%'

-- Urun adi a veya b harfi ile baslayan urunlerin tum bilgilerini getir
Select * from Urunler where UrunAdi like '[ab]%'

-- Urun adi a harfinden h harfine kadar herhangi bir harf ile baslayan urunleri getir
Select * from Urunler where UrunAdi like '[a-h]%'

-- Urun adi a ile biten ve fiyati 10 ile 30 dolar arasi olan urunlerin birincisini goruntule
Select Top 1 * from Urunler where UrunAdi like '%a' and BirimFiyati between 10 and 30 