package fasttrackse.ffse1703.fbms.service.quanlyduan;

import java.util.List;

import fasttrackse.ffse1703.fbms.entity.quanlyduan.TrangThaiTeam1;

public interface TrangThaiTeam1Service {
	
	public List<TrangThaiTeam1> getAll();

	public TrangThaiTeam1 findById(String maTrangThai);

	public void add(TrangThaiTeam1 trangthaiTeam1);

	public void update( TrangThaiTeam1 trangthaiTeam1);

	public void delete(TrangThaiTeam1 trangthaiTeam1);

	public List<TrangThaiTeam1> findAllForPaging(int startPosition, int maxResult);


}
