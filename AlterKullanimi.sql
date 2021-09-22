-- Alter: Kitaplar2 tablosuna yeni sutun eklemek icin
Alter table Kitaplar2 add SayfaSayisi smallint

-- Sutunun veritipini degistirmek icin kullanilan komut
alter table Kitaplar2 alter column SayfaSayisi int

