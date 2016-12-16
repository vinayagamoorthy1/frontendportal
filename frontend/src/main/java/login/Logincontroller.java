package login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

@Controller
public class Logincontroller {
	@RequestMapping("/login")
	public String login(Model model)
	{
		model.addAttribute("check7","true");
		
		return "index";
	}

	@RequestMapping("/log")
	public String log(Model model)
	{ 
		model.addAttribute("logout","true");
		
		return "index";
	}
	@Autowired
	UserDAO userDao;
	@RequestMapping("/hello.html")
	public String logincheck(Model mod,@RequestParam ("userID") String id,@RequestParam ("Password") String pwd){
   List <User> admin=userDao.adminValidation(id, pwd);
   int b=admin.size();
   if(b==1){
		mod.addAttribute("adminlogcheck","true");
		mod.addAttribute("as"," admin you logged in successfully");

	   return "adminHome";
	   
   }else{
   		List<User> user=userDao.userValidation(id, pwd);
		int a=user.size();
		if(a==1){
			mod.addAttribute("userlogcheck","true");

			
			mod.addAttribute("ha","you logged in successfully");
			return "index";
		}else {
			mod.addAttribute("ha","username or password not coorect");
			return "header";
			}
       
   }
	}
	@RequestMapping("/register")
	public ModelAndView register(Model mod){
		mod.addAttribute("check4","true");
		return new ModelAndView ("index","reg",new User());
	}
	@RequestMapping(value="/register1",method=RequestMethod.POST)
	public String submit(@ ModelAttribute("emp")User user ,BindingResult result,Model model)
	{
	
	userDao.save(user);
	return "index";

	}
}
