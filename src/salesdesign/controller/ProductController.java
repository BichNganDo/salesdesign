package salesdesign.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import salesdesign.entity.Category;
import salesdesign.entity.Product;
import salesdesign.service.CategoryService;
import salesdesign.service.ProductService;

@Controller
@RequestMapping("/product/")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	
	@GetMapping("add-product")
	public String showFormForAddProduct(Model theModel) {
		
		Product theProduct = new Product();
		theModel.addAttribute("product", theProduct);
		
		List<Category> theCategories = categoryService.getCategories();
		
		theModel.addAttribute("categories", theCategories);
		
		return "products/form-add";
	}
	
	@PostMapping("/saveProduct")
	public String saveProduct(@ModelAttribute("product") Product theProduct){
		productService.saveProduct(theProduct);
		
		return "redirect:/product/list";
	}
	
	

}
