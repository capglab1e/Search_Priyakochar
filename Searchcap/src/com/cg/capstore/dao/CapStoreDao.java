package com.cg.capstore.dao;

import java.util.List;

import com.cg.capstore.dto.Store;




public interface CapStoreDao 
{
	List<Store> getAllProducts(Integer cat);
	//public List<Store> showAllElectronics();
	



public List<Store> fetch(String productName);
}