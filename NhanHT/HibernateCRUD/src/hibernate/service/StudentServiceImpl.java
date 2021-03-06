package hibernate.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hibernate.dao.StudentDAO;
import hibernate.model.Student;


@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentDAO studentDAO;


	public void setStudentDAO(StudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}


	@Override
	@Transactional
	public List<Student> listStudent(int start, int maxRows) {
		return this.studentDAO.listStudent( start,  maxRows);
	}
	@Override
	@Transactional
	public void addStudent(Student p) {
		this.studentDAO.addStudent(p);
	}

	@Override
	@Transactional
	public void updateStudent(Student p) {
		this.studentDAO.updateStudent(p);
	}
	@Override
	@Transactional
	public Student getStudentById(int id) {
		return this.studentDAO.getStudentById(id);
	}

	@Override
	@Transactional
	public void removeStudent(int id) {
		this.studentDAO.removeStudent(id);
	}


	@Override
	@Transactional
	public int total() {
		return this.studentDAO.total();
	}
}
