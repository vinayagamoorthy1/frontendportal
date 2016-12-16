package login;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;

@Controller
@RequestMapping("/")
public class Suppliercontroller {
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private Supplier supplier;
	@Autowired
	private ProductDAO productDao;
	@Autowired
	private Product product;

	
@RequestMapping("/supplier")
public ModelAndView newsupplier()
{

	ModelAndView mv=new ModelAndView("supplier");
	mv.addObject("supplier",new Supplier());
	return mv;
	}
	@RequestMapping("/oldsupplier")
	public ModelAndView oldsupplier(@ModelAttribute("user") Supplier object)
	{
			supplierDAO.save(object);
			ModelAndView mv = new ModelAndView("supplier");
			mv.addObject("supplier",new Supplier());
				return mv;
			
		}
	@RequestMapping("/viewSupplier")
	public ModelAndView newview(){
		ModelAndView mv=new ModelAndView("viewSupplier");
		List<Supplier> list=supplierDAO.list();
		mv.addObject("supplierList",list);
	return mv;
	}
	@RequestMapping("/editSupplier/{id}")
	public String edit(@PathVariable("id") int id,Model mod){
		supplier=supplierDAO.get(id);
		mod.addAttribute("editcat","true");
		mod.addAttribute("selectedsupplierrow",supplier);
		return"editsupplier";
	}

	}

	