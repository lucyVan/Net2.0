package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.biz.CoursesManage;
import com.demo.biz.SpeciesManage;
import com.demo.biz.TeachersManage;
import com.demo.pojo.Courses;
import com.demo.pojo.Learns;
import com.demo.pojo.Species;
import com.demo.pojo.Teachers;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/jsp/Courses")
public class CoursesController {

	@Autowired
	CoursesManage CoursesManage;
	@Autowired
	SpeciesManage SpeciesManage;
	@Autowired
	TeachersManage TeachersManage;

	@RequestMapping("/SearchBySpecies.do/{Sid}")
	public String ShowBySpecies(@PathVariable("Sid") String Sid, Model model) {
		Species species = new Species();
		species.setSid(Sid);
		List<Species> SpeciesList = SpeciesManage.selectCourses(species);
		List<Courses> CoursesList = SpeciesList.get(0).getCoursesList();
		for (Courses c : CoursesList) {
			Species Species = new Species();
			Species.setSid(c.getSid());
			List<Species> speciesList = SpeciesManage.selectSpecies(Species);
			c.setSpecies(speciesList.get(0));
		}
		model.addAttribute("msg", CoursesList);
		return "Courses/QueryCoursesBySpecies";
	}

	@RequestMapping("/QueryTeachers.do")
	public String QueryTeachers(Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 5);
		Teachers teachers = new Teachers();
		List<Teachers> TeachersList = TeachersManage.selectTeachers(teachers);
		model.addAttribute("msg", TeachersList);
		PageInfo page = new PageInfo(TeachersList, 5);
		model.addAttribute("pageInfo", page);
		return "Courses/QueryTeachers";
	}

	@RequestMapping("/QueryCoursesByTeachers.do/{Tid}")
	public String QueryCoursesByTeachers(@PathVariable("Tid") String Tid, Model model) {
		Courses courses = new Courses();
		courses.setTid(Tid);
		List<Courses> CoursesList = CoursesManage.selectCourses(courses);
		for (Courses c : CoursesList) {
			Teachers Teachers = new Teachers();
			Teachers.setTid(Tid);
			List<Teachers> Teacherslist = TeachersManage.selectTeachers(Teachers);
			c.setTeachers(Teacherslist.get(0));
		}
		model.addAttribute("msg", CoursesList);
		return "Courses/QueryCoursesByTeachers";
	}

	@RequestMapping("/CoursesDetail.do/{Cid}")
	public String CoursesDetail(@PathVariable("Cid") String Cid, Model model) {
		Courses courses = new Courses();
		courses.setCid(Cid);
		List<Courses> courseslist = CoursesManage.selectCourses(courses);
		Teachers Teachers = new Teachers();
		Teachers.setTid(courseslist.get(0).getTid());
		List<Teachers> Teacherslist = TeachersManage.selectTeachers(Teachers);
		courseslist.get(0).setTeachers(Teacherslist.get(0));
		model.addAttribute("msg", courseslist.get(0));
		return "Courses/CoursesDetial";
	}

	@RequestMapping("/SearchByAnything.do")
	public String SearchByAnything(String search, @RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		PageHelper.startPage(pn, 10);
		Courses courses = new Courses();
		courses.setCname(search);
		List<Courses> courseslist = CoursesManage.selectCoursesByAnything(courses);
		model.addAttribute("msg", courseslist);
		PageInfo page = new PageInfo(courseslist, 10);
		model.addAttribute("pageInfo", page);
		return "Courses/QueryCourses";
	}
}
