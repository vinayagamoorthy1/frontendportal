package login;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.sun.corba.se.impl.javax.rmi.CORBA.Util;

@Controller
@RequestMapping("/")
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private Category category;
	@Autowired
	private ProductDAO productDao;
	@Autowired
	private Product product;
	
	

	@RequestMapping("/category")
	public ModelAndView newCategory() {
		//categoryDAO.save(category);
		
		ModelAndView mv = new ModelAndView("category");
	mv.addObject("category",new Category());
		return mv;
	 }
	
	@RequestMapping("/oldcategory")
public ModelAndView oldcategory(@ModelAttribute("user") Category object)
{
		categoryDAO.save(object);
		ModelAndView mv = new ModelAndView("category");
		mv.addObject("category",new Category());
			return mv;
		
	}
	@RequestMapping("/viewCategory")
	public ModelAndView newview(){
		ModelAndView mv=new ModelAndView("viewCategory");
		List<Category> list=categoryDAO.list();
		mv.addObject("categoryList",list);
	return mv;
	}
	@RequestMapping("/editcategory/{id}")
	public String edit(@PathVariable("id") String id,Model mod){
		category=categoryDAO.get(id);
		mod.addAttribute("editcat","true");
		mod.addAttribute("selectedcategoryrow",category);
		return"editcategory";
	}


	


}
