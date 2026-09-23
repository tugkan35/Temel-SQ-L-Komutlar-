insert into kurs(ad,il)
values('Tuğkan','İzmir')

update kurs set ulke='Türkiye' --güncelleme yapar--

select * from kurs where il='İzmir' --ili izmir olanları içerir--

select * from kurs where yas<=18 --yaşı 18 den küçük olanları içerir--

select * from kurs where yas>=35 --yaşı 35 den büyük olanları içerir--

select * from kurs where il<>'İzmir' --ili izmir olmayanları içerir--

select * from kurs where yas between 18 and 30 --yaşı 18 ile 30 arasındakileri içerir--

select * from kurs where ad like 't%' --adı t ile başlayanları içerir--

select * from kurs where ad like '%ad%' --ad içinde ad kelimesini içerir--

select * from kurs where kurs like '%web%' --kurs içinde web geçenleri içerir--

select * from kurs where il in('muğla','denizli') --ili muğla ve denizli olanları listele--

select * from kurs where yas between 18 and 30 and cinsiyet='kadın' --yaşı 18 ile 30 yaş arası kadınları listele--

select * from kurs where grup='hafta sonu' --hafta sonu grubunu içerir--

select * from kurs where yas>=18 and il='giresun' --yaşı 18 den büyük ili giresun olanları içerir--

select * from kurs where ilce in('halkapınar','karşıyaka','tire') and grup like '%akşam%' --ilçeleri halkapınar,karşıyaka ve tire sonra grubu akşam olanları içerir--

delete from kurs where id between 6980 and 7000 --id si 6980 ve 7000 arasındakileri siler--

update kurs set cinsiyet=UPPER(cinsiyet) --ilgili alanı büyük harf yapar--

update kurs set gizli_tc=SUBSTRING(tc,1,2)+'******' --verileri gizlemek için kullanılır--

update kurs set gun=DATEDIFF(day,bas_tarih,getdate()) --kaç gün önce başvuru yapıldığını gösterir--

update kurs set ay=MONTH(bas_tarih) --hangi ayda başvuru yapıldığını gösterir--

insert into kurs (ad,tc) values ('okan','56456564564')

delete from kurs where len(tc)<11 --tc si 11 den küçük olanları siler

delete from kurs where id=6990

select distinct kurs from kurs --tekrar eden satırları kaldırır--

select * from kurs order by gun --sıralama işlemi yapar--

select * from kurs order by gun desc --tersten sıralama yapar--

select * from kurs order by gun asc --düz sıralama yapar--

select * from kurs order by il,ilce,ad

select * from kurs where il='izmir' order by il,ilce --il ve ilçeyi sıralar--

select top 10 * from kurs --ilk 10 veriyi gösterir--

select top 10 * from kurs order by ad desc --alfabetik ve en büyük sıralamyı yapar(tersten)--

delete from kurs where tc is null --null verileri siler--

delete from kurs where id > 6970 --6970 den büyük olanları siler--

select ad,kurs from kurs where grup='hafta sonu' --ad ve kurs sütunundaki hafta sonu olanları içerir--

select cinsiyet,il,yas from kurs where cinsiyet='kadın' and il='izmir' and yas between 18 and 30 --cinsiyeti kadın, ili izmie ve yaşı 18 ile 30 arasını içerir--

select * from kurs where gun>=500 and yas<=18 --gün 500 den büyük ve yaşı 18 den küçük olanları içerir--

select * from kurs where gun>=500 or yas<=18 order by yas,ad 