-- JOİN KOMUTU --
select * from satis join musteri on satis.musteriid=musteri.mid join urunler on satis.urunid=urunler.uid --Burada 3 Tablonun birleştirilmiş halini içerir--

select s.tarih,m.ad,u.urunadi from satis s
join musteri m on s.musteriid=m.mid
join urunler u on s.urunid=u.uid --Burada 3 tabloyu birleştirip veri çekme işlemi gerçekleştirdik--

select m.bolge,sum(s.adet) from satis s
join musteri m on s.musteriid=m.mid
join urunler u on s.urunid=u.uid 
group by m.bolge order by 1 --Burada 3 tabloyu birleştirilir ve bölgedeki adet toplamını içerir--

select m.il,u.urunadi,sum(s.adet) from satis s
join musteri m on s.musteriid=m.mid
join urunler u on s.urunid=u.uid 
group by m.il,u.urunadi order by 1 --Burada 3 tabloyu birleştirilir, illerdeki adet toplamını ve ürün adlarını içerir--

select u.urunadi,avg(m.yas) from satis s
join musteri m on s.musteriid=m.mid
join urunler u on s.urunid=u.uid 
group by u.urunadi order by 1 --Burada 3 tabloyu birleştirilir ve ürün adına göre yaş ortalamasını alır--