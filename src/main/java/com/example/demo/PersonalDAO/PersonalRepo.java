package com.example.demo.PersonalDAO;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.model.Personal;

public interface PersonalRepo extends JpaRepository<Personal, String> {
	
	@Query("select p from Personal p where p.personal_id = ?1")
	Personal findByPersonal_id(int id);
	
	@Transactional
	@Modifying
	@Query("DELETE FROM Personal p WHERE p.personal_id =  ?1")
	void deleteByPersonal_id(int id);
	
	@Transactional
	@Modifying
	@Query("update Personal p"
			  +" set p.firstName = ?1,"
			  +"p.lastName = ?2,"
			  +"p.gender = ?3,"
			  +"p.telephone = ?4,"
			  +"p.email = ?5,"
			  +"p.location = ?6,"
			  +"p.hobbies = ?7,"
			  +"p.description = ?8 "
			  +"where p.personal_id = ?9") 
	void updateByPersonal_id(String firstName,String lastName,String gender,String
	  telephone,String email,String location,String hobbies,String description,int id);
		
	 

}
