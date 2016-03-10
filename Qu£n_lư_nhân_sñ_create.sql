-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:56:57.249




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV varchar(50)  NOT NULL,
    TenNV varchar(50)  NOT NULL,
    Ngaysinh varchar(50)  NOT NULL,
    Gioitinh varchar(50)  NOT NULL,
    email varchar(50)  NOT NULL,
    Mucluong varchar(50)  NOT NULL,
    Maphong varchar(50)  NOT NULL,
    TPhongban_Maphong varchar(50)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    Maphong varchar(50)  NOT NULL,
    Tenphong varchar(50)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (Maphong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (Maphong)
    REFERENCES TPhongban (Maphong)
;





-- End of file.

