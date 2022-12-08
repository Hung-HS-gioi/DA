SELECT GiangVien.magv,GiangVien.hotengv,Khoa.tenkhoa FROM GiangVien JOIN Khoa ON GiangVien.makhoa=Khoa.makhoa

SELECT GiangVien.magv,GiangVien.hotengv,Khoa.tenkhoa FROM GiangVien JOIN Khoa ON GiangVien.makhoa=Khoa.makhoa
WHERE GiangVien.Magv IN (SELECT HuongDan.Magv FROM HuongDan GROUP BY HuongDan.Magv HAVING COUNT(HuongDan.Magv)>1)

SELECT SinhVien.masv,SinhVien.hotensv, SinhVien.namsinh, HuongDan.ketqua FROM SinhVien JOIN HuongDan on SinhVien.masv=HuongDan.masv
Where HuongDan.ketqua is Null

SELECT SinhVien.hotensv,SinhVien.makhoa, Khoa.tenkhoa,Khoa.dienthoai FROM SinhVien JOIN Khoa on SinhVien.makhoa=Khoa.makhoa
where SinhVien.hotensv = 'Le Van Sao'

SELECT DeTai.madt, DeTai.tendt FROM DeTai JOIN HuongDan on DeTai.madt=HuongDan.madt
WHERE DeTai.madt IN (SELECT HuongDan.madt FROM HuongDan GROUP BY HuongDan.madt HAVING COUNT(HuongDan.madt)>2)

SELECT DeTai.madt,DeTai.tendt FROM DeTai
WHERE DeTai.kinhphi = (SELECT MAX(DeTai.kinhphi) FROM DeTai)

SELECT Khoa.Tenkhoa, COUNT(SinhVien.Masv) AS Số_SV
FROM SinhVien JOIN Khoa
ON SinhVien.Makhoa = Khoa.Makhoa
GROUP BY Khoa.Tenkhoa

SELECT HuongDan.madt FROM HuongDan JOIN GiangVien on HuongDan.magv = GiangVien.magv
WHERE GiangVien.hotengv = 'Thanh Xuan'

SELECT DeTai.madt, DeTai.tendt From DeTai
WHERE DeTai.madt in (SELECT HuongDan.madt FROM HuongDan JOIN GiangVien on HuongDan.magv = GiangVien.magv
WHERE GiangVien.hotengv = 'Thanh Xuan') 