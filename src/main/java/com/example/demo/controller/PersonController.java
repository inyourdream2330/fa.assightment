package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.PersonalDAO.PersonalRepo;
import com.example.demo.model.Personal;

@Controller
public class PersonController {
	
	@Autowired
	PersonalRepo repo;
	
	
	@RequestMapping("/personal")
	public String person() {	
		return "/views/pers1on.jsp";
	}
	
	@RequestMapping("/save")
	public String savePerson(@RequestParam String firstName,@RequestParam String lastName,
			@RequestParam String  gender,@RequestParam String telephone,
			@RequestParam String email,@RequestParam String location,
			@RequestParam String hobbies,@RequestParam String description)
	{
		Personal personal = new Personal(firstName, lastName, gender, telephone,email, location, hobbies, description);
		repo.save(personal);
		return"/search";
	}
	
	@RequestMapping("/search")
	public ModelAndView search() {
		ModelAndView mv = new ModelAndView("/views/search.jsp");
		List<Personal> personals = new ArrayList<Personal>();
		personals = repo.findAll();
		mv.addObject("personals", personals);
		return mv;
	}
	
	@RequestMapping("/amend")
	public ModelAndView amend(@RequestParam String id) {
		ModelAndView mv = new ModelAndView("/views/amend.jsp");
		Personal personal = repo.findByPersonal_id(Integer.parseInt(id));
		mv.addObject("personal", personal);
		return mv;

	}
	
	@RequestMapping("/update")
	public String update(@RequestParam String firstName,@RequestParam String lastName,
			@RequestParam String  gender,@RequestParam(required = false) String telephone,
			@RequestParam(required = false) String email,@RequestParam String location,
			@RequestParam(required = false) String hobbies,@RequestParam String description,@RequestParam int id) {
		repo.updateByPersonal_id(firstName, lastName, gender, telephone, email, location, hobbies, description, id);
		return "/search";
		
	}
	
	@RequestMapping("/drop")
	public String drop(@RequestParam String id) {
		repo.deleteByPersonal_id(Integer.parseInt(id));
		return "/search";
	}
}
 