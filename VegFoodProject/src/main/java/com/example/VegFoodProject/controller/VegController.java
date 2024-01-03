package com.example.VegFoodProject.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.VegFoodProject.bean.All_Veg;
import com.example.VegFoodProject.bean.Cart;
import com.example.VegFoodProject.bean.Checkout;
import com.example.VegFoodProject.bean.Contact_Us;
import com.example.VegFoodProject.bean.Dried;
import com.example.VegFoodProject.bean.FIO_Partner;
import com.example.VegFoodProject.bean.Fruits;
import com.example.VegFoodProject.bean.Juices;
import com.example.VegFoodProject.bean.Product_View;
import com.example.VegFoodProject.bean.Registration;
import com.example.VegFoodProject.bean.Reviews;
import com.example.VegFoodProject.bean.Vegetables;
import com.example.VegFoodProject.bean.Wishlist;
import com.example.VegFoodProject.dao.AllVegRepo;
import com.example.VegFoodProject.dao.CartRepo;
import com.example.VegFoodProject.dao.CheckoutRepo;
import com.example.VegFoodProject.dao.ContactRepo;
import com.example.VegFoodProject.dao.DriedRepo;
import com.example.VegFoodProject.dao.FruitsRepo;
import com.example.VegFoodProject.dao.JuiceRepo;
import com.example.VegFoodProject.dao.PartnerRepo;
import com.example.VegFoodProject.dao.ProductViewRepo;
import com.example.VegFoodProject.dao.RegRepo;
import com.example.VegFoodProject.dao.ReviewRepo;
import com.example.VegFoodProject.dao.VegRepo;
import com.example.VegFoodProject.dao.WishlistRepo;
import com.mysql.cj.Session;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class VegController {

	@Autowired
	AllVegRepo avr;
	
	
	
	@RequestMapping("/index")
	public List<All_Veg> getveg(HttpSession session) {
		List<All_Veg> veg = new ArrayList<>();
		
		for(All_Veg vegetables:avr.findAll()) {
			
			veg.add(vegetables);
		}
		
		session.setAttribute("vegetables", veg);
		
		List<Reviews> review = new ArrayList<>();
		
		for(Reviews reviews:rrr.findAll()) {
			
			review.add(reviews);
		}
		
		session.setAttribute("Reviews", review);
		
		return veg;
	}
	
	@Autowired
	ReviewRepo rrr;
	
	@RequestMapping("/about")
	public List<Reviews> getreviews(HttpServletRequest request) {
		List<Reviews> review = new ArrayList<>();
		
		for(Reviews reviews:rrr.findAll()) {
			
			review.add(reviews);
		}
		
		request.setAttribute("Reviews", review);
		return review;
	}
	
	@RequestMapping("/blog")
	public String blog() {
		return "blog";
	}
	
	@RequestMapping("/blog-single")
	public String blogsingle() {
		return "blog-single";
	}
	
	@RequestMapping("/Terms-Conditions")
	public String TermsConditions() {
		return "Terms-Conditions";
	}
	
	@RequestMapping("/membership")
	public String membership() {
		return "membership";
	}
	
	@Autowired
	PartnerRepo pr;
	
	@RequestMapping("/bulk-queries")
	public String bulkqueries() {
		return "bulk-queries";
	}
	
	@PostMapping("/fio_partner")
	public String bulkqueries(FIO_Partner f) {
		
		pr.save(f);
		ModelAndView mv = new ModelAndView();
		mv.addObject("FIO_Partner", f);
		return "bulk-queries";
	}
	
	@Autowired
	CheckoutRepo cor;
	
	@RequestMapping("/checkout")
	public String checkout() {
		return "checkout";
	}
	
	@PostMapping("/billing_details")
	public String checkout(Checkout c) {
	
		cor.save(c);
		ModelAndView mv = new ModelAndView();
		mv.addObject("Checkout",c);
		return "checkout";	
	}
	
	
	@Autowired
	ContactRepo cr;
	
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	
	@PostMapping("/contact_us")
	public String contact(Contact_Us c) {
	
		cr.save(c);
		ModelAndView mv = new ModelAndView();
		mv.addObject("Contact_Us",c);
		return "contact";	
	}
	
	
	@RequestMapping("/shop")
	public List<All_Veg> getvegetables(HttpServletRequest request) {
		List<All_Veg> veg = new ArrayList<>();
		
		for(All_Veg vegetables:avr.findAll()) {
			
			veg.add(vegetables);
		}
		
		request.setAttribute("vegetables", veg);
		return veg;
	}
	
	@Autowired
	FruitsRepo fr;
	
	@RequestMapping("/fruits")
	public List<Fruits> getfruits(HttpServletRequest request){
		List<Fruits> fruit =  new ArrayList<>();
		
		for(Fruits fruitlist : fr.findAll()) {
			fruit.add(fruitlist);
		}
		
		request.setAttribute("fruitlist", fruit);
		return fruit;
	}
	
	@Autowired
	VegRepo vr;
	
	@RequestMapping("/vegetables")
	public List<Vegetables> getveg(HttpServletRequest request){
		List<Vegetables> veg =  new ArrayList<>();
		
		for(Vegetables veglist : vr.findAll()) {
			veg.add(veglist);
		}
		
		request.setAttribute("veglist", veg);
		return veg;
	}
	
	@Autowired
	DriedRepo dr;
	
	@RequestMapping("/dried")
	public List<Dried> getdried(HttpServletRequest request){
		List<Dried> dried =  new ArrayList<>();
		
		for(Dried driedlist : dr.findAll()) {
			dried.add(driedlist);
		}
		
		request.setAttribute("driedlist", dried);
		return dried;
	}
	
	@Autowired
	JuiceRepo jr;
	
	@RequestMapping("/juices")
	public List<Juices> getjuice(HttpServletRequest request){
		List<Juices> juice =  new ArrayList<>();
		
		for(Juices juicelist : jr.findAll()) {
			juice.add(juicelist);
		}
		
		request.setAttribute("juicelist", juice);
		return juice;
	}
	
	@Autowired
	RegRepo rr;
	
	@RequestMapping("/registration")
	public String register() {
		return "registration";
	}
	
	@PostMapping("/registerform")
	public String register(Registration r) {
	
		rr.save(r);
		ModelAndView mv = new ModelAndView();
		mv.addObject("Registration",r);
		return "index";	
	}
	
	@GetMapping("/login")
	public String login() {
		return "registration";
	}
	
	@PostMapping("/loginform")
	public String loginuser(Registration r,HttpSession session) {
		
		System.out.println(r.getEmail());
		Iterable<Registration> itr = rr.findAll();
		ModelAndView mv = new ModelAndView();
		
		int count=0;
		for(Registration r1:itr ) {
		 
		if(r1.getEmail().equals(r.getEmail()) && r1.getPassword().equals(r.getPassword()))	{
		Optional<Registration> optional = rr.findById(r.getEmail());
		
		Registration r2 = optional.get();
		
		session.setAttribute("user", r1);
		return "redirect:/index";
		}else {
			count++;
		}
		
		
		
		}
		if(count>0) {

			System.out.print("failed");

			session.setAttribute("failedlogin", "Invalid email or password");
			return "login";
		}		
	
		
		return "login";
	}
	
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session=request.getSession();
		session.removeAttribute("user");
		
		return "index";
	}

	@Autowired
	CartRepo crr;
	
	@RequestMapping("/cart")
	public List<Cart> bookveg(Cart c,HttpSession session,Registration r3) {
		
		crr.save(c);
		List<Cart> cart=new ArrayList<>();
        int count=0;
		for(Cart r1:crr.findAll()) {
			System.out.println(r1.getUid());
			if(c.getUid().equals(r1.getUid())){
		    System.out.println(c.getUid());
			cart.add(r1);
			count++;
		 }
		}
		session.setAttribute("cart", cart);
		session.setAttribute("count", count);
		System.out.print(count);
		
		
		ModelAndView mv=new ModelAndView("booking");
		
		return cart;
	}
	
	@RequestMapping("/showcart")
	public String showbooking(Registration r,HttpSession session) {
		
		int sum=0,count=0;
		Iterable<Cart> itr=crr.findAll();
		List<Cart> list=new ArrayList<>();
		for(Cart cd:itr) {
			list.add(cd);
		}
		
		session.setAttribute("cart", list);
		
		
		
		return "cart";	
	}
	
	@RequestMapping("/wishcart")
	public String deletecart(Registration r,HttpSession session, Wishlist w) {
		
		wr.deleteById(w.getId());
		int sum=0,count=0;
		Iterable<Cart> itr=crr.findAll();
		List<Cart> list=new ArrayList<>();
		for(Cart cd:itr) {
			list.add(cd);
		}
		
		session.setAttribute("cart", list);
		
		
		
		return "cart";	
	}
	
	
	
	@RequestMapping("/delete")
	public String delete(Cart c,HttpSession session) {
		
		System.out.println(c.getId());
		crr.deleteById(c.getId());
		Iterable<Cart> itr=crr.findAll();
		List<Cart> list=new ArrayList<>();
		for(Cart cd:itr) {
			list.add(cd);
		}
		
		session.setAttribute("cart", list);
		
		return "cart";
	}
	
	@RequestMapping("/deletewish")
	public String deletewish(Wishlist w,HttpSession session) {
		
		
		System.out.println(w.getId());
		
		
		wr.deleteById(w.getId());
		
		Iterable<Wishlist> itr=wr.findAll();
		List<Wishlist> list=new ArrayList<>();
		for(Wishlist wl:itr) {
			list.add(wl);
		}
		
		session.setAttribute("Wishlist", list);
		
		return "wishlist";
	}
	
	
	@Autowired
	WishlistRepo wr;
	
	@RequestMapping("/wishlist")
	public String bookwishlist(Wishlist w,HttpSession session,Registration r3) {
		
		wr.save(w);
		List<Wishlist> wishlist=new ArrayList<>();

		for(Wishlist r1:wr.findAll()) {
			
			wishlist.add(r1);
		}
		
		session.setAttribute("Wishlist", wishlist);
		
		
		
		ModelAndView mv=new ModelAndView("booking");
		
		return "wishlist";
	}
	
	@RequestMapping("/showwishlist")
	public String showwishlist(Registration r,HttpSession session) {
		
		int sum=0,count=0;
		Iterable<Wishlist> itr=wr.findAll();
		List<Wishlist> list=new ArrayList<>();
		for(Wishlist wl:itr) {
			list.add(wl);
		}
		
		session.setAttribute("Wishlist", list);
		
		
		
		return "wishlist";	
	}
	
	@RequestMapping("/product-single")
	public String productsingle() {
		return "product-single";
	}
	
	@Autowired
	ProductViewRepo pvr;
	
	@RequestMapping("/productview")
	public String productview(All_Veg av,HttpSession session) {
		//pvr.save(av);
		session.setAttribute("product", av);
		
		return "product-single";
	}
	
	@RequestMapping("/Quantity")
	public String quantity( String quantity,String prices,String name,HttpSession session) {
		System.out.println(quantity);
		System.out.println(prices);
		System.out.println(name);
		int q=Integer.parseInt(quantity);
		int p=Integer.parseInt(prices);
		int i=0,price=0;
		while(i<q) {
			price=price+p;
			i++;
		}
		
		session.setAttribute("price", price);
		session.setAttribute("quantity", q);
		session.setAttribute("name", name);
		
		return "cart";
	}
	
}
