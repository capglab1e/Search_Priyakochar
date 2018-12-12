package com.cg.capstore.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.cg.capstore.dto.Store;





@Repository("dao")
public class CapStoreDaoImpl implements CapStoreDao
{

	@PersistenceContext
	EntityManager manager;
	@Override
	public List<Store> getAllProducts(Integer cat) {
		// TODO Auto-generated method stub
		Query q=manager.createQuery("from Store where categoryId=:category");
		q.setParameter("category",cat);
		List<Store> myAll = q.getResultList();
		//System.out.println(myAll);
		return myAll;
	}
	
	@Override
	public List<Store> fetch(String productName) {
		Query q=manager.createQuery("from Store where productName=:Name");
		System.out.println(productName);
		q.setParameter("Name",productName);
		List<Store> myAll = q.getResultList();
		System.out.println(myAll);
		return myAll;
	}

	
/*	@Override
	public List<Store> searchByProductName(String product) {
		// TODO Auto-generated method stub
		return null;
	}*/
	
}
