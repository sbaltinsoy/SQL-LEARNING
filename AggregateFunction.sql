-- Aggregate Function
-- 1. COUNT : Tabloda belirtilen toplam kac adet kayit oldugunu gosterir
Select * From Urunler
-- Urunler Tablosunda kac adet urun vardir ?
Select COUNT(KategoriID) from Urunler
-- COUNT fonksiyonu kac adet oldugunu sayar veri tekrarlarini da sayar
-- Null olan degerleri saymaz

Select COUNT(*) from Urunler
-- Yukarida ise butun sutunlari sayar en cok olan sutun sayisini ekrana yazar

-- Urunler tablosunda Birim Fiyati 50 ddolardan yuksek kac adet urun var?
Select COUNT(*) from Urunler where BirimFiyati > 50

-- 2. SUM : TABLODA BELIRTILEN SUTUNDAKI DEGERLERIN TOPLAMINI GOSTERIR
-- Hedef stok miktari toplami kactir
-- Sayisal ifadelerde kullanilir metinsel ifadelerde kullanilmaz
Select SUM(HedefStokDuzeyi) from Urunler

-- 1 urun icin
Select BirimFiyati*HedefStokDuzeyi from Urunler Where UrunID = 1
-- Butun urunler icin toplami
Select SUM(BirimFiyati*HedefStokDuzeyi) from Urunler


-- Simdiye kadar yapilan satislardan kazanilan toplam miktar
Select * from SatisDetaylari
Select SUM(BirimFiyati*Miktar) from SatisDetaylari
-- urunlerde yuzde 15 lik zam yapicaksak
Select SUM(BirimFiyati*Miktar*(1 + 0.15)) from SatisDetaylari
-- Urunlerde indirim yapilacaksa
Select SUM(BirimFiyati*Miktar*(1 - indirim)) from SatisDetaylari
-- Urunlerde yuzde 15 indirim yapilacaksa
Select SUM(BirimFiyati*Miktar*(1 - 0.15)) from SatisDetaylari

-- 2 ID li urunun satislarindan elde edilen toplam tutar
Select SUM(BirimFiyati*Miktar) from SatisDetaylari WHERE UrunID = 2

-- 1996 Yilinda odenen toplam nakliye ucreti
Select SUM(NakliyeUcreti) from Satislar Where SatisTarihi > '1995-12-31' and SatisTarihi< '1997-01-01'


-- 3 AVG : OrtalamaHesaplar

-- Kategori ID si 3 olan urunlerin ortalama birim fiyati
Select * From Urunler

Select AVG(BirimFiyati) from Urunler where KategoriID > 3
 -- Personel ID si 2 olan nakliyeciye odenen ortalama nakliye ucreti
 Select * from Satislar
 Select AVG(NakliyeUcreti) from Satislar where PersonelID = 2

 -- 17 ID li urunun ortalama satis fiyati
Select * From SatisDetaylari
Select AVG(BirimFiyati*Miktar*(1 - indirim)) From SatisDetaylari where UrunID = 17

-- 4. MAX : En yuksek degeri bulur

-- Birim fiyati en yuksek urun
Select * from Urunler
Select Max(BirimFiyati) from Urunler
-- 4. Kategorisindeki en pahali urun
Select Max(BirimFiyati) from Urunler where KategoriID = 4
-- Tek seferde yaapilan en yuksek satis
Select * from SatisDetaylari
Select MAX(BirimFiyati*Miktar*(1-indirim)) from SatisDetaylari

-- 5. Min : Belirtilen alandaki en dusuk degeri gosterir
Select MIN(BirimFiyati*Miktar*(1-indirim)) from SatisDetaylari
Select MIN(BirimFiyati) from Urunler
-- Metinsel ifadelerde alfabetik siralamaya gore gosterir
Select MIN(UrunAdi) from Urunler
Select MAX(UrunAdi) from Urunler