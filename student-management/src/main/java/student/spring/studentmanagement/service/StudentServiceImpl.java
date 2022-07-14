package student.spring.studentmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import student.spring.studentmanagement.entity.Student;
import student.spring.studentmanagement.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentRepository studentrepo;

	@Override
	public List<Student> findAll() {
		// TODO Auto-generated method stub
		return studentrepo.findAll();
	}

	@Override
	public Student findById(int id) {
		// TODO Auto-generated method stub
		return studentrepo.findById(id).get();
	}

	@Override
	public void save(Student student) {
		// TODO Auto-generated method stub
		studentrepo.save(student);
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		
		studentrepo.deleteById(id);

	}

}
