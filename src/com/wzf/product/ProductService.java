package com.wzf.product;

import java.util.List;

import com.wzf.utils.Page;

public class ProductService {
	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	public List<Product> findHotProducts() {
		// TODO Auto-generated method stub
		return productDao.findHotProducts();
	}

	public List<Product> findLatestProducts() {
		// TODO Auto-generated method stub
		return productDao.findLatestProducts();
	}

	public Page<Product> findByPage(int cid, int currentPage) {
		// TODO Auto-generated method stub
		int numPerPage=12;
		int totalPages=0;
		Page<Product> page=new Page<Product>();
		page.setCurrentPage(currentPage);
		page.setNumPerPage(numPerPage);
		//查当前一级分类下的总记录数
		int totalRecords=productDao.findCountByCid(cid);
		page.setTotalRecords(totalRecords);
		if(totalRecords%numPerPage==0){
			totalPages=totalRecords/numPerPage;
		}else{
			totalPages=totalRecords/numPerPage+1;
		}
		page.setTotalPages(totalPages);
		
		int begin=(currentPage-1)*numPerPage;
		List<Product> list=productDao.findByPage(cid,begin,numPerPage);
		page.setList(list);
		return page;
	}

	public Product findByPid(Integer pid) {
		// TODO Auto-generated method stub
		return productDao.findByPid(pid);
	}
	
}
