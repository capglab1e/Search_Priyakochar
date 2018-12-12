package com.cg.capstore.service;

import java.util.List;

import com.cg.capstore.dto.Store;




public interface CapStoreService 
{
	List<Store> getAllProducts(Integer cat);
	//public List<Store> showAllElectronics();
	public List<Store> fetch(String productName);


}
