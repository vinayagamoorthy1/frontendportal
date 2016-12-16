package login;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.shoppingcart.dao.ShippingaddressDAO;
import com.niit.shoppingcart.model.Order;
import com.niit.shoppingcart.model.Shippingaddress;


@Component("flowlo")
public class flowlogic implements Serializable {
	

	
	
	/**
		 * 
		 */
		@Autowired
		ShippingaddressDAO dao;
		private static final long serialVersionUID = 1L;
	@Autowired
	Order order;	
	public Order initwebflow(){
		System.out.println("ok ok");
		order=new Order();
		return order;
	}
	public String addShippinAddress(Order order,Shippingaddress shippingaddress){
		String id=dao.getshippingaddressid();
		String[] part = id.split("(?<=\\D)(?=\\d)");
	int b=Integer.parseInt(part[1])+1;
	String b1;
	if(b>9){
		 b1="ship"+b;
		}else {
		b1="ship0"+b;
	}
		order.setShippingaddress_id(b1);
		shippingaddress.setId(b1);
		
		dao.saveshipaddrs(shippingaddress);
		System.out.println("start");
		return "success";
	}
	}


