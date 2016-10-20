package com.ldap.controller;

import java.util.List;  

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
//import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.ModelAttribute;  
//import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestParam;  
import org.springframework.web.servlet.ModelAndView;  
  



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;





import com.ldap.model.Client;  
import com.ldap.service.ClientService; 


@Controller
public class ClientController {

	@Autowired  
	 ClientService clientService;  
	  
	//@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	 //@RequestMapping("form") 
	//@RequestMapping(value = { "/", "/home" })
	@RequestMapping(value = { "/", "/form" }, method = RequestMethod.GET)
	 public ModelAndView getForm(@ModelAttribute Client client) {  
	 	  return new ModelAndView("form");  
	 }  
	  
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "admin";
    }
	
	@RequestMapping(value = "/db", method = RequestMethod.GET)
    public String dbaPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "dba";
    }
	
	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "accessDenied";
    }
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }
	
	private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
 
        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }
	
	
	
	
	 @RequestMapping("register")  
	 public ModelAndView registerVoiture(@ModelAttribute Client client) {  
	 clientService.insertRow(client);  
	  return new ModelAndView("redirect:list");  
	 }  
	  
	 @RequestMapping("list")  
	 public ModelAndView getList() {  
	  List clientList = clientService.getList();  
	  return new ModelAndView("list", "clientList", clientList);  
	 }  
	  
	 @RequestMapping("delete")  
	 public ModelAndView deleteVoiture(@RequestParam String numCli) {  
	  clientService.deleteRow(numCli);  
	  return new ModelAndView("redirect:list");  
	 }  
	  
	 @RequestMapping("edit")  
	 public ModelAndView editClient(@RequestParam String numCli,  
	   @ModelAttribute Client client) {  
		 Client clientObject = clientService.getRowByNumCli(numCli);  
	  return new ModelAndView("edit", "clientObject", clientObject);  
	 }  
	  
	 @RequestMapping("update")  
	 public ModelAndView updateUser(@ModelAttribute Client client) {  
	  clientService.updateRow(client);  
	  return new ModelAndView("redirect:list");  
	 }  
	 
	 
	 @RequestMapping("view")  
	 public ModelAndView viewVoiture(@RequestParam String numCli,  
	   @ModelAttribute Client client) {  
	   Client clientObject = clientService.getRowByNumCli(numCli);  
	  return new ModelAndView("view", "clientObject", clientObject);  
	 }   
	
}
