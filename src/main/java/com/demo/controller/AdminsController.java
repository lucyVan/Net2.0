package com.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.biz.AdminsManage;
import com.demo.biz.CoursesManage;
import com.demo.biz.FlowsManage;
import com.demo.biz.LearnsManage;
import com.demo.biz.NoticesManage;
import com.demo.biz.OrdersManage;
import com.demo.biz.ReceiversManage;
import com.demo.biz.SpeciesManage;
import com.demo.biz.TeachersManage;
import com.demo.biz.UsersManage;
import com.demo.pojo.Admins;
import com.demo.pojo.Courses;
import com.demo.pojo.Flows;
import com.demo.pojo.Learns;
import com.demo.pojo.Notices;
import com.demo.pojo.Orders;
import com.demo.pojo.Receivers;
import com.demo.pojo.Species;
import com.demo.pojo.Teachers;
import com.demo.pojo.Users;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/jsp/Admins")
public class AdminsController {

	@Autowired
	private AdminsManage AdminsManage;
	@Autowired
	private CoursesManage CoursesManage;
	@Autowired
	private FlowsManage FlowsManage;
	@Autowired
	private LearnsManage LearnsManage;
	@Autowired
	private NoticesManage NoticesManage;
	@Autowired
	private OrdersManage OrdersManage;
	@Autowired
	private ReceiversManage ReceiversManage;
	@Autowired
	private SpeciesManage SpeciesManage;
	@Autowired
	private TeachersManage TeachersManage;
	@Autowired
	private UsersManage UsersManage;

	@RequestMapping("/login.do")
	public String login(String Aname, String Apassword, Model model, HttpSession se) {
		Admins admins = new Admins();
		admins.setAname(Aname);
		List<Admins> adminsList = AdminsManage.selectAdmins(admins);
		if (adminsList != null && adminsList.size() != 0) {
			admins = AdminsManage.selectAdmins(admins).get(0);
			if (admins.getAname().equals(Aname) && admins.getApassword().equals(Apassword)) {
				se.setAttribute("state", "2");
				return "Admins/Welcome";
			} else {
				String msg = "你输入的密码有误";
				model.addAttribute("msg", msg);
			}
		} else {
			Users users = new Users();
			users.setUname(Aname);
			List<Users> userslist = UsersManage.selectUsers(users);
			if (userslist != null && userslist.size() != 0) {
				users = userslist.get(0);
				if (users.getUname().equals(Aname) && users.getUpassword().equals(Apassword)) {
					se.setAttribute("state", "1");
//					session.setAttribute("users", users);
//		            session.setAttribute("Uid", users.getUid());
					se.setAttribute("Uid", users.getUid());
					return "redirect:/jsp/Courses/index.jsp";
				} else {
					String msg = "你输入的密码有误";
					model.addAttribute("msg", msg);
				}
			} else {
				String msg = "请输入正确的账号";
				model.addAttribute("msg", msg);
			}

		}
		return "Admins/Errors";
	}

	@RequestMapping("/logout.do")
	public String logout(Model model, HttpSession se) {
		se.setAttribute("state", null);
		return "redirect:/jsp/Courses/index.jsp";
	}

	@RequestMapping("Registered.do")
	public String Registered(String email, String password, String cellphone, String nickname, Model model,
			HttpSession se) {
		Users users = new Users();
		users.setUemail(email);
		users.setUpassword(password);
		users.setUtel(cellphone);
		users.setUname(nickname);
		UsersManage.insertUsers(users);
		se.setAttribute("state", "1");
		se.setAttribute("uid", UsersManage.selectUsers(users).get(0).getUid());
		return "Admins/login";
	}

	@RequestMapping("forget.do")
	public String forget(String cellphone, String password) {
		Users users = new Users();
		users.setUtel(cellphone);
		List<Users> userslist = UsersManage.selectUsers(users);
		if(userslist!=null&&userslist.size()>0) {
			users = userslist.get(0);
			users.setUpassword(password);
			UsersManage.updateUsers(users);
		}
		return "Admins/login";
	}

	@RequestMapping("/QueryCourses.do")
	public String QueryCourses(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 10);
		Courses courses = new Courses();
		List<Courses> CoursesList = CoursesManage.selectCourses(courses);
		model.addAttribute("msg", CoursesList);
		PageInfo page = new PageInfo(CoursesList, 10);
		model.addAttribute("pageInfo", page);
		return "Admins/QueryCourses";
	}

//	@RequestMapping("/DeleteCourses.do/{Cid}")
//	public String DeleteCourses(@PathVariable("Cid") String Cid, Model model) {
//		Courses courses = new Courses();
//		List<String> coursesList = new ArrayList<String>();
//		coursesList.add(Cid);
//		CoursesManage.deleteCourses(coursesList);
//		List<Courses> CoursesList = CoursesManage.selectCourses(courses);
//		model.addAttribute("msg", CoursesList);
//		return "Admins/QueryCourses";
//	}
	@RequestMapping("/DeleteCourses.do/{Cid}")
	public String DeleteCourses(@PathVariable("Cid") String Cid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		Courses courses = new Courses();
		List<String> coursesList = new ArrayList<String>();
		coursesList.add(Cid);
		CoursesManage.deleteCourses(coursesList);
		List<Courses> CoursesList = CoursesManage.selectCourses(courses);
		model.addAttribute("msg", CoursesList);
		return QueryCourses(pn, model);
	}

	@RequestMapping("/UpdateCourses.do/{Cid}")
	public String UpdateCourses(@PathVariable("Cid") String Cid, Model model) {
		Courses Courses = new Courses();
		Courses.setCid(Cid);
		List<Courses> Courseslist = CoursesManage.selectCourses(Courses);
		model.addAttribute("msg", Courseslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateCoursesSubimt.do");
		return "Admins/UpdateCourses";
	}

	@RequestMapping("UpdateCoursesSubimt.do")
	public String UpdateCoursesSubimt(Courses Courses, Model model) {
		CoursesManage.updateCourses(Courses);
		Courses t = new Courses();
		List<Courses> Courseslist = CoursesManage.selectCourses(t);
		model.addAttribute("msg", Courseslist);
		return "Admins/QueryCourses";
	}

	@RequestMapping("/InsertCourses.do")
	public String InsertCourses(Model model) {
		model.addAttribute("message", "增加");
		model.addAttribute("messages", "InsertCoursesSubmit.do");
		return "Admins/UpdateCourses";
	}

	@RequestMapping("/InsertCoursesSubmit.do")
	public String InsertCoursesSubmit(Courses Courses, Model model) {
		CoursesManage.insertCourses(Courses);
		Courses t = new Courses();
		List<Courses> Courseslist = CoursesManage.selectCourses(t);
		model.addAttribute("msg", Courseslist);
		return "Admins/QueryCourses";
	}

	@RequestMapping("/QueryFlows.do")
	public String QueryFlows(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 5);
		Flows flows = new Flows();
		List<Flows> FlowsList = FlowsManage.selectFlows(flows);
		model.addAttribute("msg", FlowsList);
		PageInfo page = new PageInfo(FlowsList, 5);
		model.addAttribute("pageInfo", page);
		return "Admins/QueryFlows";
	}

	@RequestMapping("/DeleteFlows.do/{Fid}")
	public String DeleteFlows(@PathVariable("Fid") String Fid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		Flows Flows = new Flows();
		List<String> flowsList = new ArrayList<String>();
		flowsList.add(Fid);
		FlowsManage.deleteFlows(flowsList);
		List<Flows> FlowsList = FlowsManage.selectFlows(Flows);
		model.addAttribute("msg", FlowsList);
		return QueryFlows(pn, model);
	}

	@RequestMapping("/UpdateFlows.do/{Fid}")
	public String UpdateFlows(@PathVariable("Fid") String Fid, Model model) {
		Flows Flows = new Flows();
		Flows.setFid(Fid);
		List<Flows> Flowslist = FlowsManage.selectFlows(Flows);
		model.addAttribute("msg", Flowslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateFlowsSubimt.do");
		return "Admins/UpdateFlows";
	}

	@RequestMapping("UpdateFlowsSubimt.do")
	public String UpdateFlowsSubimt(Flows Flows, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		FlowsManage.updateFlows(Flows);
		Flows t = new Flows();
		List<Flows> Flowslist = FlowsManage.selectFlows(t);
		model.addAttribute("msg", Flowslist);
		return QueryFlows(pn, model);
	}

	@RequestMapping("/InsertFlows.do")
	public String InsertFlows(Model model) {
		model.addAttribute("message", "增加");
		model.addAttribute("messages", "InsertFlowsSubmit.do");
		return "Admins/UpdateFlows";
	}

	@RequestMapping("/InsertFlowsSubmit.do")
	public String InsertFlowsSubmit(Flows Flows, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		FlowsManage.insertFlows(Flows);
		Flows t = new Flows();
		List<Flows> Flowslist = FlowsManage.selectFlows(t);
		model.addAttribute("msg", Flowslist);
		return QueryFlows(pn, model);
	}

	//
	@RequestMapping("/QueryLearns.do")
	public String QueryLearns(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 5);
		Learns learns = new Learns();
		List<Learns> LearnsList = LearnsManage.selectLearns(learns);
		model.addAttribute("msg", LearnsList);
		PageInfo page = new PageInfo(LearnsList, 5);
		model.addAttribute("pageInfo", page);
		return "Admins/QueryLearns";
	}

	@RequestMapping("/DeleteLearns.do/{Lid}")
	public String DeleteLearns(@PathVariable("Lid") String Lid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		Learns Learns = new Learns();
		List<String> Learnslist = new ArrayList<String>();
		Learnslist.add(Lid);
		LearnsManage.deleteLearns(Learnslist);
		List<Learns> LearnsList = LearnsManage.selectLearns(Learns);
		model.addAttribute("msg", LearnsList);
		return QueryLearns(pn,model);
	}

	@RequestMapping("/UpdateLearns.do/{Lid}")
	public String UpdateLearns(@PathVariable("Lid") String Lid, Model model) {
		Learns Learns = new Learns();
		Learns.setLid(Lid);
		List<Learns> Learnslist = LearnsManage.selectLearns(Learns);
		model.addAttribute("msg", Learnslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateLearnsSubimt.do");
		return "Admins/UpdateLearns";
	}

	@RequestMapping("UpdateLearnsSubimt.do")
	public String UpdateLearnsSubimt(Learns Learns, Model model) {
		LearnsManage.updateLearns(Learns);
		Learns t = new Learns();
		List<Learns> Learnslist = LearnsManage.selectLearns(t);
		model.addAttribute("msg", Learnslist);
		return "Admins/QueryLearns";
	}

	@RequestMapping("/InsertLearns.do")
	public String InsertLearns(Model model) {
		model.addAttribute("message", "增加");
		model.addAttribute("messages", "InsertLearnsSubmit.do");
		return "Admins/UpdateLearns";
	}

	@RequestMapping("/InsertLearnsSubmit.do")
	public String InsertLearnsSubmit(Learns Learns, Model model) {
		LearnsManage.insertLearns(Learns);
		Learns t = new Learns();
		List<Learns> Learnslist = LearnsManage.selectLearns(t);
		model.addAttribute("msg", Learnslist);
		return "Admins/QueryLearns";
	}

	//
	@RequestMapping("/QueryNotices.do")
	public String QueryNotices(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 5);
		Notices notices = new Notices();
		List<Notices> NoticesList = NoticesManage.selectNotices(notices);
		model.addAttribute("msg", NoticesList);
		PageInfo page = new PageInfo(NoticesList, 5);
		model.addAttribute("pageInfo", page);
		return "Admins/QueryNotices";
	}

	@RequestMapping("/DeleteNotices.do/{Nid}")
	public String DeleteNotices(@PathVariable("Nid") String Nid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		List<String> Noticeslist = new ArrayList<String>();
		Notices Notices = new Notices();
		Noticeslist.add(Nid);
		NoticesManage.deleteNotices(Noticeslist);
		model.addAttribute("msg", NoticesManage.selectNotices(Notices));
		return QueryNotices(pn,model);
	}

	@RequestMapping("/UpdateNotices.do/{Nid}")
	public String UpdateNotices(@PathVariable("Nid") String Nid, Model model) {
		Notices Notices = new Notices();
		Notices.setNid(Nid);
		List<Notices> Noticeslist = NoticesManage.selectNotices(Notices);
		model.addAttribute("msg", Noticeslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateNoticesSubimt.do");
		return "Admins/UpdateNotices";
	}

	@RequestMapping("UpdateNoticesSubimt.do")
	public String UpdateNoticesSubimt(Notices Notices, Model model) throws Exception {
		NoticesManage.updateNotices(Notices);
		Notices t = new Notices();
		List<Notices> Noticeslist = NoticesManage.selectNotices(t);
		model.addAttribute("msg", Noticeslist);
		return "Admins/QueryNotices";
	}

	@RequestMapping("/InsertNotices.do")
	public String InsertNotices(Model model) {
		model.addAttribute("message", "增加");
		model.addAttribute("messages", "InsertNoticesSubmit.do");
		return "Admins/UpdateNotices";
	}

	@RequestMapping("/InsertNoticesSubmit.do")
	public String InsertNoticesSubmit(Notices Notices, Model model) {
		NoticesManage.insertNotices(Notices);
		Notices t = new Notices();
		List<Notices> Noticeslist = NoticesManage.selectNotices(t);
		model.addAttribute("msg", Noticeslist);
		return "Admins/QueryNotices";
	}

	//
	@RequestMapping("/QueryOrders.do")
	public String QueryOrders(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 5);
		Orders orders = new Orders();
		List<Orders> OrdersList = OrdersManage.selectOrders(orders);
		model.addAttribute("msg", OrdersList);
		PageInfo page = new PageInfo(OrdersList, 5);
		model.addAttribute("pageInfo", page);
		return "Admins/QueryOrders";
	}

	@RequestMapping("/DeleteOrders.do/{Oid}")
	public String DeleteOrders(@PathVariable("Oid") String Oid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		List<String> Orderslist = new ArrayList<String>();
		Orders Orders = new Orders();
		Orderslist.add(Oid);
		OrdersManage.deleteOrders(Orderslist);
		model.addAttribute("msg", OrdersManage.selectOrders(Orders));
		return QueryOrders(pn,model);
	}

	@RequestMapping("/UpdateOrders.do/{Oid}")
	public String UpdateOrders(@PathVariable("Oid") String Oid, Model model) {
		Orders Orders = new Orders();
		Orders.setOid(Oid);
		List<Orders> Orderslist = OrdersManage.selectOrders(Orders);
		model.addAttribute("msg", Orderslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateOrdersSubimt.do");
		return "Admins/UpdateOrders";
	}

	@RequestMapping("UpdateOrdersSubimt.do")
	public String UpdateOrdersSubimt(Orders Orders, Model model) throws Exception {
		OrdersManage.updateOrders(Orders);
		Orders t = new Orders();
		List<Orders> Orderslist = OrdersManage.selectOrders(t);
		model.addAttribute("msg", Orderslist);
		return "Admins/QueryOrders";
	}

	@RequestMapping("/InsertOrders.do")
	public String InsertOrders(Model model) {
		model.addAttribute("message", "增加");
		model.addAttribute("messages", "InsertOrdersSubmit.do");
		return "Admins/UpdateOrders";
	}

	@RequestMapping("/InsertOrdersSubmit.do")
	public String InsertOrdersSubmit(Orders Orders, Model model) {
		OrdersManage.insertOrders(Orders);
		Orders t = new Orders();
		List<Orders> Orderslist = OrdersManage.selectOrders(t);
		model.addAttribute("msg", Orderslist);
		return "Admins/QueryOrders";
	}

	//
	@RequestMapping("/QueryReceivers.do")
	public String QueryReceivers(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 5);
		Receivers receivers = new Receivers();
		List<Receivers> ReceiversList = ReceiversManage.selectReceivers(receivers);
		model.addAttribute("msg", ReceiversList);
		PageInfo page = new PageInfo(ReceiversList, 5);
		model.addAttribute("pageInfo", page);
		return "Admins/QueryReceivers";
	}

	@RequestMapping("/DeleteReceivers.do/{Rid}")
	public String DeleteReceivers(@PathVariable("Rid") String Rid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		List<String> Receiverslist = new ArrayList<String>();
		Receivers Receivers = new Receivers();
		Receiverslist.add(Rid);
		ReceiversManage.deleteReceivers(Receiverslist);
		model.addAttribute("msg", ReceiversManage.selectReceivers(Receivers));
		return QueryReceivers(pn,model);
	}

	@RequestMapping("/UpdateReceivers.do/{Rid}")
	public String UpdateReceivers(@PathVariable("Rid") String Rid, Model model) {
		Receivers Receivers = new Receivers();
		Receivers.setRid(Rid);
		List<Receivers> Receiverslist = ReceiversManage.selectReceivers(Receivers);
		model.addAttribute("msg", Receiverslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateReceiversSubimt.do");
		return "Admins/UpdateReceivers";
	}

	@RequestMapping("UpdateReceiversSubimt.do")
	public String UpdateReceiversSubimt(Receivers Receivers, Model model) throws Exception {
		ReceiversManage.updateReceivers(Receivers);
		Receivers t = new Receivers();
		List<Receivers> Receiverslist = ReceiversManage.selectReceivers(t);
		model.addAttribute("msg", Receiverslist);
		return "Admins/QueryReceivers";
	}

	@RequestMapping("/InsertReceivers.do")
	public String InsertReceivers(Model model) {
		model.addAttribute("message", "增加");
		model.addAttribute("messages", "InsertReceiversSubmit.do");
		return "Admins/UpdateReceivers";
	}

	@RequestMapping("/InsertReceiversSubmit.do")
	public String InsertReceiversSubmit(Receivers Receivers, Model model) {
		ReceiversManage.insertReceivers(Receivers);
		Receivers t = new Receivers();
		List<Receivers> Receiverslist = ReceiversManage.selectReceivers(t);
		model.addAttribute("msg", Receiverslist);
		return "Admins/QueryReceivers";
	}

	//
	@RequestMapping("/QuerySpecies.do")
	public String QuerySpecies(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 5);
		Species species = new Species();
		List<Species> SpeciesList = SpeciesManage.selectSpecies(species);
		model.addAttribute("msg", SpeciesList);
		PageInfo page = new PageInfo(SpeciesList, 5);
		model.addAttribute("pageInfo", page);
		return "Admins/QuerySpecies";
	}

	@RequestMapping("/DeleteSpecies.do/{Sid}")
	public String DeleteSpecies(@PathVariable("Sid") String Sid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		List<String> Specieslist = new ArrayList<String>();
		Species Species = new Species();
		Specieslist.add(Sid);
		SpeciesManage.deleteSpecies(Specieslist);
		model.addAttribute("msg", SpeciesManage.selectSpecies(Species));
		return QuerySpecies(pn,model);
	}

	@RequestMapping("/UpdateSpecies.do/{Sid}")
	public String UpdateSpecies(@PathVariable("Sid") String Sid, Model model) {
		Species Species = new Species();
		Species.setSid(Sid);
		List<Species> Specieslist = SpeciesManage.selectSpecies(Species);
		model.addAttribute("msg", Specieslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateSpeciesSubimt.do");
		return "Admins/UpdateSpecies";
	}

	@RequestMapping("UpdateSpeciesSubimt.do")
	public String UpdateSpeciesSubimt(Species Species, Model model) throws Exception {
		SpeciesManage.updateSpecies(Species);
		Species t = new Species();
		List<Species> Specieslist = SpeciesManage.selectSpecies(t);
		model.addAttribute("msg", Specieslist);
		return "Admins/QuerySpecies";
	}

	@RequestMapping("/InsertSpecies.do")
	public String InsertSpecies(Model model) {
		model.addAttribute("message", "增加");
		model.addAttribute("messages", "InsertSpeciesSubmit.do");
		return "Admins/UpdateSpecies";
	}

	@RequestMapping("/InsertSpeciesSubmit.do")
	public String InsertSpeciesSubmit(Species Species, Model model) {
		SpeciesManage.insertSpecies(Species);
		Species t = new Species();
		List<Species> Specieslist = SpeciesManage.selectSpecies(t);
		model.addAttribute("msg", Specieslist);
		return "Admins/QuerySpecies";
	}

	//
	@RequestMapping("/QueryTeachers.do")
	public String QueryTeachers(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 5);
		Teachers teachers = new Teachers();
		List<Teachers> TeachersList = TeachersManage.selectTeachers(teachers);
		model.addAttribute("msg", TeachersList);
		PageInfo page = new PageInfo(TeachersList, 5);
		model.addAttribute("pageInfo", page);
		return "Admins/QueryTeachers";
	}

	@RequestMapping("/DeleteTeachers.do/{Tid}")
	public String DeleteTeachers(@PathVariable("Tid") String Tid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		List<String> teacherslist = new ArrayList<String>();
		Teachers teachers = new Teachers();
		teacherslist.add(Tid);
		TeachersManage.deleteTeachers(teacherslist);
		model.addAttribute("msg", TeachersManage.selectTeachers(teachers));
		return QueryTeachers(pn,model);
	}

	@RequestMapping("/UpdateTeachers.do/{Tid}")
	public String UpdateTeachers(@PathVariable("Tid") String Tid, Model model) {
		Teachers teachers = new Teachers();
		teachers.setTid(Tid);
		List<Teachers> teacherslist = TeachersManage.selectTeachers(teachers);
		model.addAttribute("msg", teacherslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateTeachersSubimt.do");
		return "Admins/UpdateTeachers";
	}

	@RequestMapping("UpdateTeachersSubimt.do")
	public String UpdateTeachersSubimt(Teachers teachers, Model model) {
		TeachersManage.updateTeachers(teachers);
		Teachers t = new Teachers();
		List<Teachers> teacherslist = TeachersManage.selectTeachers(t);
		model.addAttribute("msg", teacherslist);
		return "Admins/QueryTeachers";
	}

	@RequestMapping("/InsertTeachers.do")
	public String InsertTeachers(Model model) {
		model.addAttribute("message", "增加");
		model.addAttribute("messages", "InsertTeachersSubmit.do");
		return "Admins/UpdateTeachers";
	}

	@RequestMapping("/InsertTeachersSubmit.do")
	public String InsertTeachersSubmit(Teachers teachers, Model model) {
		TeachersManage.insertTeachers(teachers);
		Teachers t = new Teachers();
		List<Teachers> teacherslist = TeachersManage.selectTeachers(t);
		model.addAttribute("msg", teacherslist);
		return "Admins/QueryTeachers";
	}

	@RequestMapping("/QueryUsers.do")
	public String QueryUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 5);
		Users Users = new Users();
		List<Users> UsersList = UsersManage.selectUsers(Users);
		Species Species = new Species();
		Species.setSid(Users.getSid());
		List<Species> specieslist = SpeciesManage.selectSpecies(Species);
		Users.setSpecies(Species);
		model.addAttribute("msg", UsersList);
		PageInfo page = new PageInfo(UsersList, 5);
		model.addAttribute("pageInfo", page);
		return "Admins/QueryUsers";
	}

	@RequestMapping("/DeleteUsers.do/{Uid}")
	public String DeleteUsers(@PathVariable("Uid") String Uid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		List<String> Userslist = new ArrayList<String>();
		Users Users = new Users();
		Userslist.add(Uid);
		UsersManage.deleteUsers(Userslist);
		model.addAttribute("msg", UsersManage.selectUsers(Users));
		return QueryUsers(pn,model);
	}

	@RequestMapping("/UpdateUsers.do/{Uid}")
	public String UpdateUsers(@PathVariable("Uid") String Uid, Model model) {
		Users Users = new Users();
		Users.setUid(Uid);
		List<Users> Userslist = UsersManage.selectUsers(Users);
		model.addAttribute("msg", Userslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateUsersSubimt.do");
		return "Admins/UpdateUsers";
	}

	@RequestMapping("UpdateUsersSubimt.do")
	public String UpdateUsersSubimt(Users users, Model model) throws Exception {
		UsersManage.updateUsers(users);
		Users t = new Users();
		List<Users> Userslist = UsersManage.selectUsers(t);
		model.addAttribute("msg", Userslist);
		return "Admins/QueryUsers";
	}

	@RequestMapping("/InsertUsers.do")
	public String InsertUsers(Model model) {
		model.addAttribute("message", "增加");
		model.addAttribute("messages", "InsertUsersSubmit.do");
		return "Admins/UpdateUsers";
	}

	@RequestMapping("/InsertUsersSubmit.do")
	public String InsertUsersSubmit(Users Users, Model model) {
		UsersManage.insertUsers(Users);
		Users t = new Users();
		List<Users> Userslist = UsersManage.selectUsers(t);
		model.addAttribute("msg", Userslist);
		return "Admins/QueryUsers";
	}
}
