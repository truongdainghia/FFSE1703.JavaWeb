package fasttrackse.entity;

import org.springframework.stereotype.Component;

@Component
public class MonLy implements MonHoc {
	public String mangSachDiHoc() {
		return "Mang Sách Lý đi học";
	}
}