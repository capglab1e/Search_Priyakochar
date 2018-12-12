package com.cg.capstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.capstore.dto.Store;
import com.cg.capstore.service.CapStoreService;




@Controller
public class CapStoreController 
{
	@Autowired
	CapStoreService service;
	
	@RequestMapping(value="all")
	public String start()
	{
		return "home";
		
	}
	
	@RequestMapping(value="products")
	public ModelAndView Categories(@ModelAttribute("my") Store s, @RequestParam("id") int i)
	{
		List<Store> list=service.getAllProducts(i);
		return new ModelAndView("categories","data",list);
		
	}
	
//	@RequestMapping(value = "/retrieve")
//	public String retrieve_Detail(Model model) {
//		Store store = new Store();
//		model.addAttribute("store", store);
//		return "Retrieve_Store";
//	}
//
//	@RequestMapping(value = "/retrieve_Store")
//	public String retrieveEmployee(@ModelAttribute("store") Store store,BindingResult result,
//			Model model) {
//		String target=null;
//		Store storeRes = service.fetch(store.getProductName());
//		target="display";
//			model.addAttribute("storeList", storeRes);
//			return target;	
//		
//		
		
//	}
	@RequestMapping(value = "/retrieve_by_name")
	public String retrieveEmployee(@ModelAttribute("search") Store store,@RequestParam("productName") String pName, BindingResult result,
			Model model) {
		List<Store> ser = service.fetch(pName);
//		System.out.println(ser);
		model.addAttribute("show", ser);
		return "success";
	}

}
