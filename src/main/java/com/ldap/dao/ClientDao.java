package com.ldap.dao;

import java.util.List;  

import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;

import com.ldap.model.Client; 

public interface ClientDao {

	public String insertRow(Client client);  
	  
	 public List<Client> getList();  
	  
	 @PostAuthorize ("returnObject.type == authentication.name")
	 public Client getRowByNumCli(String numCli);  
	  
	 @PreAuthorize("hasRole('ADMIN')")
	 public String updateRow(Client client);  
	  
	 @PreAuthorize("hasRole('ADMIN')")
	 public String deleteRow(String numCli);  
	
}
