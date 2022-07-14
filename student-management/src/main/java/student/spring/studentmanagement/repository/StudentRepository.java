package student.spring.studentmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import student.spring.studentmanagement.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {


}
