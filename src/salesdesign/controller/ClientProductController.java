package salesdesign.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import salesdesign.entity.Category;
import salesdesign.entity.Member;
import salesdesign.entity.Product;
import salesdesign.service.CategoryService;
import salesdesign.service.MemberService;
import salesdesign.service.ProductService;

@Controller
public class ClientProductController {
	
	@Autowired
	private ProductService productMember;
	
	@GetMapping("/home/product")
	public String showHomeProductPage(Model theModel) {
		
		List<Product> products = productMember.getProducts();
		theModel.addAttribute("products", products);
		
		return "clients/product-page";
	}

}
