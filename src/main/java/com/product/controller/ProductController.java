package com.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.product.entity.Product;
import com.product.service.ProductService;

@Controller
public class ProductController
{
	@Autowired
	private ProductService productService;
	
	@GetMapping("insertForm")
	public String getInsertFormView()
	{
		return "insert-form";
	}
	
	@PostMapping("insertProduct")
	public String addInserProduct(Product product)
	{
		productService.saveProduct(product);
		return "insert-success";
	}
	@GetMapping("productList")
	public ModelAndView showList()
	{
		List<Product> products = productService.showProduct();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("products", products);
		modelAndView.setViewName("product-list");
		return modelAndView;
	}
	
	@GetMapping("searchForm")
	public String getsearchForm()
	{
		return "search-form";
	}
	
	@GetMapping("searchRecord")
	public String getsearchRecord(long pid, Model model)
	{
		Product product = productService.findProduct(pid);
		if(product==null)
		{
			model.addAttribute("msg", "Product not found!!!");
			model.addAttribute("pid", pid);
			return "search-form";
		}
		model.addAttribute("product", product);
		return "show-record";
	}
	@GetMapping("deleteForm")
	public String getDeleteForm()
	{
		return "delete-form";
	}
	@GetMapping("confirmDelete")
	public String getDeleteRecord(long pid, Model model)
	{
		Product product = productService.findProduct(pid);
		if(product==null)
		{
			model.addAttribute("msg", "Product does not found!!!");
			model.addAttribute("pid", pid);
			return "delete-form";
		}
		model.addAttribute("product", product);
		return "confirm-delete";
	}
	@GetMapping("deleteRecord")
	public String getDelete(int pid, Model model)
	{
		productService.deleteSuccess(pid);
		return "delete-success";
	}
	@GetMapping("editForm")
	public String getUpdateForm()
	{
		return "edit-form";
	}
	@GetMapping("showUpdateForm")
	public String getUpdateFormView(long pid, Model model)
	{
		Product product = productService.findProduct(pid);
		if(product==null)
		{
			model.addAttribute("msg", "Product does not found!!!");
			model.addAttribute("pid", pid);
			return "edit-form";
		}
		model.addAttribute("product", product);
		return "update-record-form";
	}
	@PostMapping("updateRecord")
	public String getdateRecord(Product productNew, Model model)
	{
		productService.updateRecord(productNew);
		model.addAttribute("pid", productNew.getPid());
		return "update-success";
	}
}
