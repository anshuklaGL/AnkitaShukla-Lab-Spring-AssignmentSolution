package student.spring.studentmanagement.service;

import java.util.List;

import student.spring.studentmanagement.entity.Student;

public interface StudentService {

	public List<Student> findAll();
	public Student findById(int id);
	public void save(Student student);
	public void deleteById(int id);

}
