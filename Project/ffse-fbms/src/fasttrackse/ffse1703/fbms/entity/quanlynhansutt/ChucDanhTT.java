package fasttrackse.ffse1703.fbms.entity.quanlynhansutt;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

/**
 * The persistent class for the chuc_danh database table.
 * 
 */
@Entity
@Table(name = "chuc_danh")
public class ChucDanhTT implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ma_chuc_danh", unique = true, nullable = false, length = 30)
	@NotEmpty
	private String maChucDanh;

	@Column(name = "ten_chuc_danh", nullable = false, length = 255)
	@NotEmpty
	private String tenChucDanh;

	// bi-directional many-to-one association to HoSoNhanVien
	@OneToMany(mappedBy = "chucDanh")
	private List<HoSoNhanVienTT> hoSoNhanViens;

	public ChucDanhTT() {
	}

	public String getMaChucDanh() {
		return this.maChucDanh;
	}

	public void setMaChucDanh(String maChucDanh) {
		this.maChucDanh = maChucDanh;
	}

	public String getTenChucDanh() {
		return this.tenChucDanh;
	}

	public void setTenChucDanh(String tenChucDanh) {
		this.tenChucDanh = tenChucDanh;
	}

	public List<HoSoNhanVienTT> getHoSoNhanViens() {
		return this.hoSoNhanViens;
	}

	public void setHoSoNhanViens(List<HoSoNhanVienTT> hoSoNhanViens) {
		this.hoSoNhanViens = hoSoNhanViens;
	}

}