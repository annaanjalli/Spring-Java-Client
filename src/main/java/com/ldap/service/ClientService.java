package com.ldap.service;

import java.util.List;  

import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.security.access.prepost.PreAuthorize;

import com.ldap.model.Client;  

public interface ClientService {

	public String insertRow(Client client);  
	  
	 public List<Client> getList();  
	  
	 @PostAuthorize ("returnObject.type == authentication.name")
	 public Client getRowByNumCli(String numCli);  
	  
	 @PreAuthorize("hasRole('ADMIN')")
	 public String updateRow(Client client);  
	  
	 @PreAuthorize("hasRole('ADMIN')")
	 public String deleteRow(String numCli);  
}
