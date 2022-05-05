package salesdesign.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import salesdesign.entity.Category;
import salesdesign.entity.Member;
import salesdesign.service.CategoryService;

@Controller
@RequestMapping("/category/")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@GetMapping("list")
	public String listCategories(Model theModel) {
		
		List<Category> theCategories = categoryService.getCategories();
		
		theModel.addAttribute("categories", theCategories);
		
		return "categories/manage-category";
	}
	
	@GetMapping("add-category")
	public String showFormAddCate(Model theModel) {
		Category theCategory = new Category();
		theModel.addAttribute("category", theCategory);
		return "categories/form-add";
		
	}
	
	@PostMapping("/saveCategory")
	public String saveCategory(@ModelAttribute("category") Category theCategory){
		categoryService.saveCategory(theCategory);
		
		return "redirect:/category/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("categoryId") int theId, Model theModel) {
		
		Category theCategory = categoryService.getCategory(theId);
		
		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("category", theCategory);
		
		// send over to our form
		return "categories/form-add";
	}
	

}
