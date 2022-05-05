package salesdesign.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import salesdesign.entity.Category;
import salesdesign.entity.Member;
import salesdesign.service.CategoryService;

@Controller
@RequestMapping("/category/")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
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
	

}
