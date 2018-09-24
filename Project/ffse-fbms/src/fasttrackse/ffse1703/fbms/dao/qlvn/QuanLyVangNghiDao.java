package fasttrackse.ffse1703.fbms.dao.qlvn;

import java.util.List;

import fasttrackse.ffse1703.fbms.entity.qlvn.LyDoXinNghi;
import fasttrackse.ffse1703.fbms.entity.qlvn.ThongKeDonXinPhep;
import fasttrackse.ffse1703.fbms.entity.qlvn.ThongTinHoSoNhanVien;
import fasttrackse.ffse1703.fbms.entity.qlvn.TrangThai;
import fasttrackse.ffse1703.fbms.entity.security.HoSoNhanVien;

public interface QuanLyVangNghiDao {
	public List<ThongKeDonXinPhep> danhSachXinNghiChoDuyet();

	public List<ThongKeDonXinPhep> danhSachXinNghiDuyet();
	
	public List<ThongKeDonXinPhep> danhSachXinNghiTuChoi();
	
	public void create(ThongKeDonXinPhep thongKeDonXinPhep);
	
	public void createWait(ThongKeDonXinPhep thongKeDonXinPhep);
	
	public void createBrowse(ThongKeDonXinPhep thongKeDonXinPhep);
	
	public void createfeedback(ThongKeDonXinPhep thongKeDonXinPhep);
	
	public List<LyDoXinNghi> loadAllLyDo();
	
	public List<TrangThai> loadAllTrangThai();
	
	public List<ThongTinHoSoNhanVien> loadAllHoSo();
	
	public ThongKeDonXinPhep findById(int id);
	
	public void delete(int id);
	
	public List<ThongKeDonXinPhep> danhSachXinNghiNhap(int page);
	
	public long totalRecords();
	
	public void updateNhap(ThongKeDonXinPhep thongKeDonXinPhep) ;
}
