create table tbl_proje
(
proje_kartno int identity primary key,
proje_projeadi nvarchar(50) not null,
proje_tahminisure nvarchar(50) not null,
proje_gerceklesensure nvarchar(50) not null,
proje_aciklama nvarchar(max) not null,
proje_notlar nvarchar(max),
proje_fk_uyeid int foreign key references tbl_uye(uyeid),
proje_uzman nvarchar(50)
)

create table tbl_is
(
is_id int identity primary key,
is_yapilacakis nvarchar(50) not null,
is_yapilacakis_aciklama nvarchar(max) not null,
is_durum nvarchar(50) not null,
is_fk_kartno int foreign key references tbl_proje(proje_kartno)
)

create table tbl_uye
(
uyeid int identity primary key,
uye_ad nvarchar(50) not null,
uye_kullaniciadi nvarchar(50) not null,
uye_sifre nvarchar(50) not null
)