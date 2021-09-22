-- Kategori ID si 1,2,3 olmayani goruntule
Select * from Urunler where KategoriID not in (1,2,3)

-- Urun Adi a ile baslamayanlari urunleri goster
Select * from Urunler where UrunAdi not like 'A%'
