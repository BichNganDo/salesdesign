package salesdesign.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import salesdesign.dao.ProductDAO;
import salesdesign.entity.Product;

@Transactional
@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO productDao;

	@Override
	public List<Product> getProducts() {
		
		return productDao.getProducts();
	}

	@Override
	public void saveProduct(Product theProduct) {
		productDao.saveProduct(theProduct);
		
	}

	@Override
	public Product getProduct(int theId) {
		return productDao.getProduct(theId);
	}

	@Override
	public void deleteProduct(int theId) {
		productDao.deleteProduct(theId);
		
	}

}
