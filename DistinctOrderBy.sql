-- Hangi Musterilere satis yaptigimizi gosteren sorgu
-- (Tekrarlayan verileri gostermez)
select distinct MusteriID, PersonelID from Satislar

-- Urunler Tablosundaki Verileri BirimFiyatina gore siralama
Select * from Urunler order by BirimFiyati asc
-- tersten siralar
Select * from Urunler order by BirimFiyati desc

-- Stok Sayisi 50 den buyuk olan ve kategori ID si 1,2,3 olan urunleri fiyatina gore 
-- buyukten kucuge sirala
Select * from Urunler where HedefStokDuzeyi <> 0 and KategoriID in (1,2,3) order by BirimFiyati desc 