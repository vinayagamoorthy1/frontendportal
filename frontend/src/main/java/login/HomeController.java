package login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

@Controller
public class HomeController {
	@Autowired
	UserDAO userDao;
	@Autowired
	CategoryDAO categoryDAO;
	@RequestMapping("/")
	public ModelAndView onLoad(HttpSession session,Model mod)
	{
		ModelAndView mv=new ModelAndView("/index");
		mod.addAttribute("car","true");
		//session.setAttribute("category",category);
		session.setAttribute("categoryList", categoryDAO.list());
		return mv;
	}
	public String gotohome(Model model)
	{
		model.addAttribute("car3","true");
model.addAttribute("car","true");
		return "index";
	}
	
	@RequestMapping("/Aboutus")
	public String about(Model model)
	{ 
		model.addAttribute("check","true");
		
		return "Aboutus";
	}
	@RequestMapping("/contactus")
	public String contactus(Model model)
	{ 
		model.addAttribute("contactus","true");
		
		return "contactus";
	}
	

	
	@RequestMapping("/mycart")
	public String mycart(Model model)
	{ 
		model.addAttribute("mycart","true");
		
		return "mycart";
	}
	
	
		
		}

	
	

