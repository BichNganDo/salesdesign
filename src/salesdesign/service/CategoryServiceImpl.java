package salesdesign.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import salesdesign.dao.CategoryDAO;
import salesdesign.entity.Category;

@Transactional
@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDAO categoryDao;

	@Override
	public List<Category> getCategories() {
		return categoryDao.getCategories();
	}

	@Override
	public void saveCategory(Category theCategory) {
		categoryDao.saveCategory(theCategory);
		
	}

	@Override
	public Category getCategory(int theId) {
		return categoryDao.getCategory(theId);
	}

	@Override
	public void deleteCategory(int theId) {
		categoryDao.deleteCategory(theId);
		
	}

}
