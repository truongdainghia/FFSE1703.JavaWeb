package fasttrackse.ffse1703.fbms.service.mvpquanliduan;

import java.util.List;

import fasttrackse.ffse1703.fbms.entity.mvpquanliduan.Domain;

public interface DomainService {
	public List<Domain> findAll();
	public Domain findById(int id);
	public void addNew(Domain domain);
	public void update(Domain domain);
	public void delete(Domain domain);
	public int checkDomain(String nameDoamin);
}