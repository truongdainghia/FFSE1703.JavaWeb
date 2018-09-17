package fasttrackse.ffse1703.fbms.dao.quantrinhansupikalong;

import java.util.List;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.ffse1703.fbms.entity.quantrinhansupikalong.HoSoNhanVienPikalong;

@Repository
public class HoSoNhanVienPikalongDaoImpl implements HoSoNhanVienPikalongDao {
	@Autowired 
	public SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	
	@Override
	@SuppressWarnings("rawtypes")
	public List<HoSoNhanVienPikalong> listNhanVien() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from HoSoNhanVienPikalong where isActive = :active");
		query.setParameter("active", 1);
		@SuppressWarnings("unchecked")
		List<HoSoNhanVienPikalong> nhanVienList = query.list();
		return nhanVienList;
	}


	@Override
	@SuppressWarnings("rawtypes")
	public void delete(int maNv) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("update HoSoNhanVienPikalong set isActive = :active" 
												 + " where maNv = :maNv");
		query.setParameter("active", 0);
		query.setParameter("maNv", maNv);
		
		query.executeUpdate();
		
	}
	
	

}