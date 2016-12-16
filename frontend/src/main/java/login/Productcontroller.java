package login;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class Productcontroller {
	@Autowired(required = true)
	private ProductDAO productDao;
	
	@Autowired(required = true)
	private CategoryDAO categoryDAO;
	
	@Autowired(required = true)
	private SupplierDAO supplierDAO;
	private String path="F:\\workspace new\\frontend\\src\\main\\webapp\\WEB-INF\\images";

	@RequestMapping("/product1")
	public ModelAndView newproduct(@ModelAttribute("user") Product object,@RequestParam("image") MultipartFile file){
	FileUtil.upload(path, file, object.getId()+".jpg");

			productDao.save(object);
			ModelAndView mv = new ModelAndView("product");
			mv.addObject("product",new Product());
				return mv;
	}			
	@RequestMapping("/product")
	public ModelAndView oldproduct(@ModelAttribute("user") Product object,HttpSession session)
	{
			productDao.save(object);
			ModelAndView mv = new ModelAndView("product");
			mv.addObject("product",new Product());
			session.setAttribute("categoryList", categoryDAO.list());
				return mv;
				
			
		}

@RequestMapping("/viewproduct")
public ModelAndView newview(Model mod){
	ModelAndView mv=new ModelAndView("viewproduct");
	List<Product> list=productDao.list();
	mod.addAttribute("productList",list);
return mv;
}

@RequestMapping("product/{id}")
public String showproduct(@PathVariable("id") String id,Model mod,RedirectAttributes redir){
Product product =productDao.get(id);
redir.addFlashAttribute("productdescription",product);
return "redirect:/showsingleproduct1";
}
@RequestMapping("/showsingleproduct1")
public String showsingleproduct(Model mod){
	mod.addAttribute("showsingleproduct","true");
	
	return "index";
}

}
	
  /*@RequestMapping(value = "/product", method=RequestMethod.POST)
	public String newProduct( @ModelAttribute ("Product") Product product, Model model,HttpServletRequest request){
		productDao.save(product);
		MultipartFile itemImage = product.getItemImage();
	       String rootDirectory = request.getSession().getServletContext().getRealPath("/");
path = Paths.get(rootDirectory + "\\WEB-INF\\images\\"+product.getProduct_Id()+".jpg");
	        if (itemImage != null && !itemImage.isEmpty()) {
	            try {
	            itemImage.transferTo(new File(path.toString()));
	            } catch (Exception e) {
	                e.printStackTrace();
	                throw new RuntimeException("item image saving failed.", e);
	            }
	        }
	return "admin";

}*/
	
