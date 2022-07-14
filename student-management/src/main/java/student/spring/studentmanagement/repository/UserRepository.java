package student.spring.studentmanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import student.spring.studentmanagement.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	
	public User findByUsername(String username);

}
