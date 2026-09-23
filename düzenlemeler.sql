select * from onlineSatis
UPDATE onlineSatis SET ulke=REPLACE(ulke,';','') --gereksiz karekterleri silme işlemini içerir--
select UrunAd,sum(adet) from onlineSatis group by UrunAd order by 2 desc --ürün adına göre adet toplamını içerip büyükten küçüğe doğru sıralama yapar--
update onlineSatis set tutar=BirimFiyat*adet --tutar da güncelleme yapar--
select ulke,count(tutar) from onlineSatis group by ulke having count(id)>100 order by 2 desc --ülkedeki toplam kayıt sayısına göre filitreleme yapar--