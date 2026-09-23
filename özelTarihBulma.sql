select * from musteri

update musteri set yas=DATEDIFF(year,dogumtarihi,GETDATE()) --istenilen tarihdeki verileri bulur--