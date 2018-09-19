package fasttrackse.ffse1703.fbms.entity.qlvn2;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
@Entity
@Table(name = "ly_do_nghi")
public class LyDoEntity {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 int id;

	@Column(name = "ly_do")
	@NotEmpty
	 String ly_do;
	
	public LyDoEntity (Integer id, String ly_do  ) {
		super ();
		this.id = id;
		this.ly_do = ly_do;
	}
	
	public LyDoEntity ( String ly_do  ) {
		super ();
		this.ly_do = ly_do;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLy_do() {
		return ly_do;
	}
	public void setLy_do(String ly_do) {
		this.ly_do = ly_do;
	}

	
	
	
}