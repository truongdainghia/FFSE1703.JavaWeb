package hibernate.service;

import java.util.List;

import hibernate.model.Student;

public interface StudentService {
	public void addStudent(Student p);
	public void updateStudent(Student p);
	public List<Student> listStudent();
	public Student getStudentById(int id);
	public void removeStudent(int id);
}
