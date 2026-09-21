-- FONKSİYONLAR --
select avg(yas) as ort_yas,sum(yas) as toplam_yas,min(bas_tarih) as baslangic_tarihi,max(bas_tarih) as bitis_tarihi,count(id) as toplam_kayit from kurs --tüm işlemler--

select avg(yas) from kurs --ortlamayı bulur--

select sum(yas) from kurs --toplama yapar--

select min(bas_tarih) from kurs --en küçük değeri döndürür--

select max(bas_tarih) from kurs --maximum değeri döndürür--

select count(id) from kurs --toplam sütun sayısını verir--

select kurs,count(ad) from kurs group by kurs --kurs grubundaki başvuru sayısınının toplamını içerir--

select kurs,count(ad) from kurs where il='izmir' group by kurs --izmir ilindeki kurs grubundaki başvuru sayı toplamını içerir--

select kurs,count(ad) as sayi from kurs where il='izmir' group by kurs order by sayi desc --izmir ilindeki kurs grubundaki başvuru sayı toplamını içerir ve tersten sıralama işlemi yapar--