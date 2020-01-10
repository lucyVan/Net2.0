package com.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.demo.biz.CoursesManage;
import com.demo.biz.FlowsManage;
import com.demo.biz.LearnsManage;
import com.demo.biz.NoticesManage;
import com.demo.biz.OrdersManage;
import com.demo.biz.ReceiversManage;
import com.demo.biz.SpeciesManage;
import com.demo.biz.UsersManage;
import com.demo.pojo.Courses;
import com.demo.pojo.Flows;
import com.demo.pojo.Learns;
import com.demo.pojo.Notices;
import com.demo.pojo.Orders;
import com.demo.pojo.Receivers;
import com.demo.pojo.Species;
import com.demo.pojo.Users;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/jsp/Users")
public class UsersController {

	@Autowired
	private UsersManage UsersManage;
	@Autowired
	private CoursesManage CoursesManage;
	@Autowired
	private OrdersManage OrdersManage;
	@Autowired
	private ReceiversManage ReceiversManage;
	@Autowired
	private NoticesManage NoticesManage;
	@Autowired
	private LearnsManage LearnsManage;
	@Autowired
	private FlowsManage FlowsManage;
	@Autowired
	private SpeciesManage SpeciesManage;

	@RequestMapping("/UsersDetial.do")
	public String UsersDetial(Model model, HttpSession session) {
		String Uid = (String) session.getAttribute("Uid");
		Users users = new Users();
		users.setUid(Uid);
		List<Users> userslist = UsersManage.selectUsers(users);
		users = userslist.get(0);
		Species Species = new Species();
		Species.setSid(users.getSid());
		List<Species> specieslist = SpeciesManage.selectSpecies(Species);
		Species = specieslist.get(0);
		users.setSpecies(Species);
		model.addAttribute("msg", users);

		return "Users/UsersDetial";
	}
	// @RequestMapping("/UpdateUsers.do")
	// public String UpdateUsers(Model model, HttpSession session){
	// String Uid = (String) session.getAttribute("Uid");
	// Users Users = new Users();
	// Users.setUid(Uid);
	// List<Users> Userslist = UsersManage.selectUsers(Users);
	// model.addAttribute("msg", Userslist.get(0));
	//
	// Species Species = new Species();
	// Species.setSid(Users.getSid());
	// List<Species> specieslist = SpeciesManage.selectSpecies(Species);
	// Species = specieslist.get(0);
	// model.addAttribute("mssg", Species);
	//
	// model.addAttribute("message", "修改");
	// model.addAttribute("messages", "UpdateUsersSubimt.do");
	// return "Users/UpdateUsers";
	// }
	// @RequestMapping("UpdateUsersSubimt.do")
	// public String UpdateUsersSubimt(Users users,Model model, HttpSession
	// session){
	// String Uid = (String) session.getAttribute("Uid");
	// UsersManage.updateUsers(users);
	// Users u = new Users();
	// u.setUid(Uid);
	// List<Users> Userslist = UsersManage.selectUsers(u);
	// users = Userslist.get(0);
	// Species Species = new Species();
	// Species.setSid(users.getSid());
	// List<Species> specieslist = SpeciesManage.selectSpecies(Species);
	// Species = specieslist.get(0);
	// users.setSpecies(Species);
	// model.addAttribute("msg", users);
	// return "Users/UsersDetial";
	// }

	@RequestMapping("/UpdateUsers.do")
	public String UpdateUsers(Model model, HttpSession session) {
		String Uid = (String) session.getAttribute("Uid");
		Users Users = new Users();
		Users.setUid(Uid);
		List<Users> Userslist = UsersManage.selectUsers(Users);
		Users = Userslist.get(0);

		Species Species = new Species();
		Species.setSid(Users.getSid());
		List<Species> specieslist = SpeciesManage.selectSpecies(Species);
		Species = specieslist.get(0);
		Users.setSpecies(Species);
		model.addAttribute("msg", Users);

		model.addAttribute("message", "确认修改");
		model.addAttribute("messages", "UpdateUsersSubimt.do");
		return "Users/UpdateUsers";
	}

	@RequestMapping("UpdateUsersSubimt.do")
	public String UpdateUsersSubimt(Users users, Model model, HttpSession session) {
		String Uid = (String) session.getAttribute("Uid");
		UsersManage.updateUsers(users);
		Users u = new Users();
		u.setUid(Uid);
		List<Users> Userslist = UsersManage.selectUsers(u);
		users = Userslist.get(0);
		Species Species = new Species();
		Species.setSid(users.getSid());
		List<Species> specieslist = SpeciesManage.selectSpecies(Species);
		Species = specieslist.get(0);
		users.setSpecies(Species);
		model.addAttribute("msg", users);
		return "Users/UsersDetial";
	}

	@RequestMapping("/QueryOrders.do")
	public String QueryOrders(Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn,
			HttpSession session) {
		PageHelper.startPage(pn, 5);
		String Uid = (String) session.getAttribute("Uid");
		Orders orders = new Orders();
		orders.setUid(Uid);
		List<Orders> OrdersList = OrdersManage.selectOrders(orders);
		model.addAttribute("msg", OrdersList);
		PageInfo page = new PageInfo(OrdersList, 5);
		model.addAttribute("pageInfo", page);
		return "Users/QueryOrders";
	}

	@RequestMapping("/QueryReceivers.do")
	public String QueryReceivers(Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn,
			HttpSession session) {
		PageHelper.startPage(pn, 5);
		String Uid = (String) session.getAttribute("Uid");
		Receivers receivers = new Receivers();
		receivers.setUid(Uid);
		List<Receivers> ReceiversList = ReceiversManage.selectReceivers(receivers);
		model.addAttribute("msg", ReceiversList);
		PageInfo page = new PageInfo(ReceiversList, 5);
		model.addAttribute("pageInfo", page);
		return "Users/QueryReceivers";
	}

	@RequestMapping("/QueryNotices.do")
	public String QueryNotices(Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn,
			HttpSession session) {
		PageHelper.startPage(pn, 5);
		String Uid = (String) session.getAttribute("Uid");
		Notices notices = new Notices();
		notices.setUid(Uid);
		List<Notices> NoticesList = NoticesManage.selectNotices(notices);
		model.addAttribute("msg", NoticesList);
		PageInfo page = new PageInfo(NoticesList, 5);
		model.addAttribute("pageInfo", page);
		return "Users/QueryNotices";
	}

	@RequestMapping("/QueryLearns.do")
	public String QueryLearns(Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn,
			HttpSession session) {
		System.out.println(
				"16546165445154578715616548455555555555555555555555555555555555555555555555555555555555555555555558888888888");
		PageHelper.startPage(pn, 5);
		String Uid = (String) session.getAttribute("Uid");
		Learns learns = new Learns();
		learns.setUid(Uid);
		List<Learns> learnsList = LearnsManage.selectLearns(learns);
		for (Learns l : learnsList) {
			Courses Courses = new Courses();
			Courses.setCid(l.getCid());
			List<Courses> courseslist = CoursesManage.selectCourses(Courses);
			l.setCourses(courseslist.get(0));
		}
		model.addAttribute("msg", learnsList);
		PageInfo page = new PageInfo(learnsList, 5);
		model.addAttribute("pageInfo", page);
		return "Users/QueryLearns";
	}

	@RequestMapping("/QueryFlows.do/{Oid}")
	public String QueryFlows(@PathVariable("Oid") String oid, Model model) {
		Flows flows = new Flows();
		flows.setOid(oid);
		List<Flows> flowslist = FlowsManage.selectFlows(flows);
		model.addAttribute("msg", flowslist);
		return "Users/QueryFlows";
	}

	@RequestMapping("/InsertLearns.do/{Cid}")
	public String InsertLearns(@PathVariable("Cid") String cid,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model, HttpSession se) {
		String uid = (String) se.getAttribute("Uid");
		System.out.println(uid);
		Learns learns = new Learns();
		learns.setCid(cid);
		learns.setUid(uid);
		LearnsManage.insertLearns(learns);
		return QueryLearns(model, pn, se);
	}

	@RequestMapping("/InsertReceivers.do")
	public String InsertReceivers(Model model) {
		model.addAttribute("message", "增加");
		model.addAttribute("messages", "InsertReceiversSubmit.do");
		return "Users/UpdateReceivers";
	}

	@RequestMapping("/InsertReceiversSubmit.do")
	public String InsertReceiversSubmit(Receivers receivers, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession se) {
		String uid = (String) se.getAttribute("Uid");
		receivers.setUid(uid);
		System.out.println(uid);
		ReceiversManage.insertReceivers(receivers);

		Receivers r = new Receivers();
		r.setUid(uid);
		List<Receivers> receiverslist = ReceiversManage.selectReceivers(r);
		model.addAttribute("msg", receiverslist);
		return QueryReceivers(model, pn, se);
	}

	@RequestMapping("/UpdateReceivers.do/{Rid}")
	public String UpdateReceivers(@PathVariable("Rid") String Rid, Model model, HttpSession session) {
		Receivers Receivers = new Receivers();
		Receivers.setRid(Rid);
		session.setAttribute("Rid", Receivers.getRid());
		List<Receivers> Receiverslist = ReceiversManage.selectReceivers(Receivers);
		model.addAttribute("msg", Receiverslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateReceiversSubimt.do");
		return "Users/UpdateReceivers";
	}

	@RequestMapping("UpdateReceiversSubimt.do")
	public String UpdateReceiversSubimt(Receivers Receivers, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		String rid = (String) session.getAttribute("Rid");
		String uid = (String) session.getAttribute("Uid");
		Receivers.setUid(uid);
		Receivers.setRid(rid);
		System.out.println(uid);
		System.out.println(rid);
		ReceiversManage.updateReceivers(Receivers);
		System.out.println(Receivers);
		List<Receivers> Receiverslist = ReceiversManage.selectReceivers(Receivers);
		model.addAttribute("msg", Receiverslist);
		return QueryReceivers(model, pn, session);
	}

//	@RequestMapping("/UpdateOrders.do/{Oid}")
//	public String UpdateOrders(@PathVariable("Oid") String Oid, Model model) {
//		System.out.println(Oid);
//		Orders orders = new Orders();
//		orders.setOid(Oid);
//		List<Orders> orderslist = OrdersManage.selectOrders(orders);
//		if (orderslist != null && orderslist.size() != 0) {
//			model.addAttribute("msg", orderslist.get(0));
//		}
//		return "Users/UpdateOrders";
//	}
//
//	@RequestMapping("UpdateOrdersSubimt.do/{Oid}")
//	public String UpdateOrdersSubimt(@PathVariable("Oid") String Oid, String oevaul, Model model, HttpSession session) {
//		String Uid = (String) session.getAttribute("Uid");
//		Orders orders = new Orders();
//		orders.setOevaul(oevaul);
//		orders.setOid(Oid);
//		OrdersManage.updateOrders(orders);
//		Orders o = new Orders();
//		o.setUid(Uid);
//		List<Orders> orderslist = OrdersManage.selectOrders(o);
//		model.addAttribute("msg", orderslist);
//		return "Users/QueryOrders";
//	}
	
	@RequestMapping("/UpdateOrders.do/{Oid}")
	public String UpdateOrders(@PathVariable("Oid") String Oid, Model model) {
		System.out.println(Oid);
		Orders orders = new Orders();
		orders.setOid(Oid);
		List<Orders> orderslist = OrdersManage.selectOrders(orders);
		if (orderslist != null && orderslist.size() != 0) {
			model.addAttribute("msg", orderslist.get(0));
		}
		return "Users/UpdateOrders";
	}

	@RequestMapping("UpdateOrdersSubimt.do/{Oid}")
	public String UpdateOrdersSubimt(@PathVariable("Oid") String Oid, String oevaul, Model model,@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		String Uid = (String) session.getAttribute("Uid");
		Orders orders = new Orders();
		orders.setOevaul(oevaul);
		orders.setOid(Oid);
		OrdersManage.updateOrders(orders);
		Orders o = new Orders();
		o.setUid(Uid);
		List<Orders> orderslist = OrdersManage.selectOrders(o);
		model.addAttribute("msg", orderslist);
		return QueryOrders(model, pn, session);
	}

	@RequestMapping("/UpdateNotices.do/{Nid}")
	public String UpdateNotices(@PathVariable("Nid") String Nid, Model model) {
		Notices notices = new Notices();
		notices.setNid(Nid);
		List<Notices> noticeslist = NoticesManage.selectNotices(notices);
		model.addAttribute("msg", noticeslist.get(0));
		model.addAttribute("message", "修改");
		model.addAttribute("messages", "UpdateNoticesSubimt.do");
		return "Users/UpdateNotices";
	}

	@RequestMapping("UpdateNoticesSubimt.do")
	public String UpdateNoticesSubimt(Notices notices, Model model, HttpSession session) {
		String Uid = (String) session.getAttribute("Uid");
		NoticesManage.updateNotices(notices);
		Notices n = new Notices();
		n.setUid(Uid);
		List<Notices> noticeslist = NoticesManage.selectNotices(n);
		model.addAttribute("msg", noticeslist);
		return "Users/QueryNotices";
	}

	@RequestMapping("/DeleteReceivers.do/{Rid}")
	public String DeleteReceivers(@PathVariable("Rid") String Rid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		List<String> receiverslist = new ArrayList<String>();
		receiverslist.add(Rid);
		ReceiversManage.deleteReceivers(receiverslist);
		return QueryReceivers(model, pn, session);
	}

	@RequestMapping("/DeleteOrders.do/{Oid}")
	public String DeleteOrders(@PathVariable("Oid") String Oid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		List<String> orderslist = new ArrayList<String>();
		orderslist.add(Oid);
		OrdersManage.deleteOrders(orderslist);
		return QueryOrders(model, pn, session);
	}

	@RequestMapping("/DeleteNotices.do/{Nid}")
	public String DeleteNotices(@PathVariable("Nid") String Nid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		List<String> noticeslist = new ArrayList<String>();
		noticeslist.add(Nid);
		NoticesManage.deleteNotices(noticeslist);
		return QueryNotices(model, pn, session);
	}

	@RequestMapping("/DeleteLearns.do/{Lid}")
	public String DeleteLearns(@PathVariable("Lid") String Lid, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpSession session) {
		List<String> learnslist = new ArrayList<String>();
		learnslist.add(Lid);
		LearnsManage.deleteLearns(learnslist);
		return QueryLearns(model, pn, session);
	}
}
