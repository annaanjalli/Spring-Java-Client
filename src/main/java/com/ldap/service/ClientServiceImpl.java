package com.ldap.service;

import java.util.List;  

import org.springframework.beans.factory.annotation.Autowired;  
  


import org.springframework.stereotype.Service;

import com.ldap.service.ClientService;
import com.ldap.dao.ClientDao;  
import com.ldap.model.Client;  

@Service("clientService")
public class ClientServiceImpl implements ClientService {

	
	@Autowired  
	 ClientDao clientDao;  
	  
	 @Override  
	 public String insertRow(Client client) {  
	  return clientDao.insertRow(client);  
	 }  
	  
	 @Override  
	 public List<Client> getList() {  
	  return clientDao.getList();  
	 }  
	  
	 @Override  
	 public Client getRowByNumCli(String numCli) {  
	  return clientDao.getRowByNumCli(numCli);  
	 }  
	  
	 @Override  
	 public String updateRow(Client client) {  
	  return clientDao.updateRow(client);  
	 }  
	  
	 @Override  
	 public String deleteRow(String numCli) {  
	  return clientDao.deleteRow(numCli);  
	 }  
	
}
