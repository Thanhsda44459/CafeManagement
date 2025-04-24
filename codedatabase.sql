Table SanPham {
  maSP int [pk]
  tenSP varchar
  hinhAnh varchar
  giaNhap int
}

Table CongThuc {
  maCongThuc int [pk]
  maSP int
  maNguyenLieu int
  dinhLuong int
  donVi varchar
}

Table ChiTietDon {
  maCTDon int [pk]
  soLuong int
  donGia int
  maHoaDon int
  maSP int
  maKichThuoc int
  maDuong int
  maDa int
  yeuCauDacBiet varchar
}

Table ChiTietPhieuNhap {
  maCTPhieuNhap int [pk]
  soLuong int
  donGia int
  maPhieuNhap int
  maNguyenLieu int
}

Table NguyenLieu {
  maNguyenLieu int [pk]
  tenNguyenLieu varchar
  donGia int
  soLuongTon int
  donVi varchar
}

Table HoaDon {
  maHoaDon int [pk]
  ngayXuat date
  maNhanVien int
  trangThai varchar
}

Table PhieuNhap {
  maPhieuNhap int [pk]
  ngayNhap date
  maNhanVien int
}

Table NhanVien {
  maNV int [pk]
  hoTen varchar
  ngaySinh date
  gioiTinh varchar
}

Table TaiKhoan {
  maNV int [pk]
  matKhau varchar
  tenDangNhap varchar
  maQuyen int
}

Table Quyen {
  maQuyen int [pk]
  tenQuyen varchar
  moTa varchar
}

Table Duong {
  maDuong int [pk]
  phanTram int
}

Table Duong_SP {
  maSP int [pk]
  maDuong int [pk]
}

Table Da {
  maDa int [pk]
  phanTram int
}

Table Da_SP {
  maSP int [pk]
  maDa int [pk]
}

Table KichThuoc {
  maKichThuoc int [pk]
  ten varchar
  giaThem int
}

Table KichThuoc_SP {
  maSP int [pk]
  maKichThuoc int [pk]
}

Table Topping {
  maTopping int [pk]
  tenTopping varchar
  giaThem int
}

Table Topping_SP {
  maSP int [pk]
  maTopping int [pk]
}

Table ChiTietTopping {
  maCTDon int [pk]
  maTopping int [pk]
}

// Relationships
Ref: CongThuc.maSP > SanPham.maSP
Ref: CongThuc.maNguyenLieu > NguyenLieu.maNguyenLieu
Ref: ChiTietDon.maHoaDon > HoaDon.maHoaDon
Ref: ChiTietDon.maSP > SanPham.maSP
Ref: ChiTietDon.maKichThuoc > KichThuoc.maKichThuoc
Ref: ChiTietDon.maDuong > Duong.maDuong
Ref: ChiTietDon.maDa > Da.maDa
Ref: ChiTietPhieuNhap.maPhieuNhap > PhieuNhap.maPhieuNhap
Ref: ChiTietPhieuNhap.maNguyenLieu > NguyenLieu.maNguyenLieu
Ref: HoaDon.maNhanVien > NhanVien.maNV
Ref: PhieuNhap.maNhanVien > NhanVien.maNV
Ref: TaiKhoan.maNV > NhanVien.maNV
Ref: TaiKhoan.maQuyen > Quyen.maQuyen
Ref: Duong_SP.maSP > SanPham.maSP
Ref: Duong_SP.maDuong > Duong.maDuong
Ref: Da_SP.maSP > SanPham.maSP
Ref: Da_SP.maDa > Da.maDa
Ref: KichThuoc_SP.maSP > SanPham.maSP
Ref: KichThuoc_SP.maKichThuoc > KichThuoc.maKichThuoc
Ref: Topping_SP.maSP > SanPham.maSP
Ref: Topping_SP.maTopping > Topping.maTopping
Ref: ChiTietTopping.maCTDon > ChiTietDon.maCTDon
Ref: ChiTietTopping.maTopping > Topping.maTopping

Ref: "TaiKhoan"."maNV" < "SanPham"."maSP"

Ref: "CongThuc"."dinhLuong" < "CongThuc"."maNguyenLieu"