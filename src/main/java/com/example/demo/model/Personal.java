package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Personal {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int personal_id;
	@Column(name = "firstName")
	private String firstName;
	@Column(name = "lastName")
	private String lastName;
	
	private String gender;
	
	private String telephone;
	
	private String email;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name = "You_are_in")
	private String location;
	
	private String hobbies;
	
	private String description;
	
	
	public int getPersonal_id() {
		return personal_id;
	}
	public void setPersonal_id(int personal_id) {
		this.personal_id = personal_id;
	}
	public String getfirstName() {
		return firstName;
	}
	public void setfirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getlastName() {
		return lastName;
	}
	public void setlastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getHobbies() {
		return hobbies;
	}
	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public Personal(String firstName, String lastName, String gender, String telephone, String email,
			String location, String hobbies, String description) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.telephone = telephone;
		this.email = email;
		this.location = location;
		this.hobbies = hobbies;
		this.description = description;
	}
	public Personal() {
		super();
	}
	
	
}
