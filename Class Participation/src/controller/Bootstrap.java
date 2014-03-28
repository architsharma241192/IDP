package controller;

import java.io.IOException;
import java.util.*;

import DAO.*;
import models.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Bootstrap
 */
@WebServlet("/Bootstrap")
public class Bootstrap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bootstrap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDAO userDAO = new UserDAO();
		
		List<User> users = new ArrayList<User>();
		
		users.add(new User("abhilashaa.2011", "Abhilasha Atha", "123", false, 0, 0));
		users.add(new User("akash.kedia.2011", "Akash Kedia", "123", false, 0, 0));
		users.add(new User("akkustedjo.2011", "Alfred Kusuma Kustedjo", "123", false, 0, 0));
		users.add(new User("antonysalim.2011", "Antony Salim", "123", false, 0, 0));
		users.add(new User("archits.2011", "Archit Ajit Sharma", "123", false, 0, 0));
		users.add(new User("yaqing.bie.2011", "Bie Yaqing", "123", false, 0, 0));
		users.add(new User("zejun.cai.2010", "Cai Zejun", "123", false, 0, 0));
		users.add(new User("cfchan.2011", "Chan Chun Fatt", "123", false, 0, 0));
		users.add(new User("yc.chua.2011", "Chua Yi Chong", "123", false, 0, 0));
		users.add(new User("dewi.zana.2011", "Dewi Zana", "123", false, 0, 0));
		users.add(new User("eytanojo.2011", "Edward Young Tanojo", "123", false, 0, 0));
		users.add(new User("kaifeng.2011", "Feng Kai", "123", false, 0, 0));
		users.add(new User("schsu.2011", "Hsu Shao Cheh", "123", false, 0, 0));
		users.add(new User("jasmine.lau.2011", "Jasmine Lau Jia Yi", "123", false, 0, 0));
		users.add(new User("janice.koh.2011", "Koh Rui Ling Janice", "123", false, 0, 0));
		users.add(new User("xiuhao.kuek.2011", "Kuek Xiu Hao", "123", false, 0, 0));
		users.add(new User("htle.2011", "Le Hoang Trinh", "123", false, 0, 0));
		users.add(new User("hungle.2011", "Le Hung", "123", false, 0, 0));
		users.add(new User("jin.lee.2011", "Lee Jin", "123", false, 0, 0));
		users.add(new User("wjlee.2011", "Lee Wen Jie", "123", false, 0, 0));
		users.add(new User("nicholas.li.2011", "Li Jiacheng Nicholas", "123", false, 0, 0));
		users.add(new User("cheeyonglim.2011", "Lim Chee Yong", "123", false, 0, 0));
		users.add(new User("jeremylim.2011", "Lim Jie Ming Jeremy", "123", false, 0, 0));
		users.add(new User("paige.lim.2011", "Lim Paige Isabela Quiambao", "123", false, 0, 0));
		users.add(new User("shuhui.lim.2011", "Lim Shu Hui", "123", false, 0, 0));
		users.add(new User("eleazar.lim.2011", "Lim Wei Ji Eleazar", "123", false, 0, 0));
		users.add(new User("kennethliow.2011", "Liow Jian Quan Kenneth", "123", false, 0, 0));
		users.add(new User("shuyi.liu.2011", "Liu Shuyi", "123", false, 0, 0));
		users.add(new User("wenguanglow.2011", "Low Wen Guang", "123", false, 0, 0));
		users.add(new User("jeanettalow.2011", "Low Yi Fang Jeanetta", "123", false, 0, 0));
		users.add(new User("meloody.gian.2011", "Melody Gian Jia Min", "123", false, 0, 0));
		users.add(new User("yingneng.ng.2011", "Ng Ying Neng", "123", false, 0, 0));
		users.add(new User("ktv.nguyen.2011", "Nguyen Khac Thien Vu", "123", false, 0, 0));
		users.add(new User("yt.ning.2011", "Ning Yuting", "123", false, 0, 0));
		users.add(new User("leonard.ong.2011", "Ong Guang Shan Leonard", "123", false, 0, 0));
		users.add(new User("mtphung.2011", "Phung Minh Thu", "123", false, 0, 0));
		users.add(new User("mriingen.2011", "Riingen Miguel Nicholas Zamora", "123", false, 0, 0));
		users.add(new User("shuhan.tan.2011", "Tan Shu Han", "123", false, 0, 0));
		users.add(new User("sherman.tan.2011", "Tan Si Xian Sherman", "123", false, 0, 0));
		users.add(new User("smtan.2011", "Tan Siong Min", "123", false, 0, 0));
		users.add(new User("fennie.too.2011", "Too Jingyan Fennie", "123", false, 0, 0));
		users.add(new User("pvttran.2011", "Tran Pham Viet Thao", "123", false, 0, 0));
		users.add(new User("yangewang.2011", "Wang Yange", "123", false, 0, 0));
		users.add(new User("ying.zeng.2011", "Zeng Ying", "123", false, 0, 0));
		
		users.add(new User("rcdavis", "Dr. Richard C. Davis", "123", true, 0, 0));
		
		userDAO.addMembers(users);
		
	}

}
