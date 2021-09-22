-- Create Komutu Kullanimi Tablo Olusturmak Icin
-- use SqlEgitimDB
-- create database testDb

create table Kitaplar2(
	KitapID int not null,
	KitapAd nvarchar(50) not null,
	Yazar nvarchar(50) not null,
	YayinEvi nvarchar(50) not null,
	Fiyat smallmoney not null
)