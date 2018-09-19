package fasttrackse.ffse1703.fbms.dao.mvpquanliduan;

import java.util.List;

import fasttrackse.ffse1703.fbms.entity.mvpquanliduan.Framework;



public interface FrameworkDao {
	public List<Framework> getAll();
	public Framework getById(int id);
	public void add(Framework framework);
	public void update(Framework framework);
	public void delete(int id);
	public int checkNameFramework(String nameFramework);
	
}
