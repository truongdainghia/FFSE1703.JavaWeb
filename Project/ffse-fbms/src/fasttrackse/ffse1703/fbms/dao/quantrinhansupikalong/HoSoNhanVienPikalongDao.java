package fasttrackse.ffse1703.fbms.dao.quantrinhansupikalong;

import java.util.List;

import fasttrackse.ffse1703.fbms.entity.quantrinhansupikalong.HoSoNhanVienPikalong;
import fasttrackse.ffse1703.fbms.entity.security.HoSoNhanVien;

public interface HoSoNhanVienPikalongDao {
	public List<HoSoNhanVienPikalong> listNhanVien();
	public void delete(int maNv);
	public void insert(HoSoNhanVienPikalong hoSoNhanVien);
	public HoSoNhanVienPikalong getEdit(int maNv);
	
}
