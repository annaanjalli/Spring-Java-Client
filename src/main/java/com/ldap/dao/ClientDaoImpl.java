package com.ldap.dao;

import java.io.Serializable;  
import java.util.List;  
  



import javax.transaction.Transactional;  
  



import org.hibernate.Session;  
import org.hibernate.SessionFactory;  
import org.hibernate.Transaction;  
import org.springframework.beans.factory.annotation.Autowired;  
  


import org.springframework.stereotype.Repository;

import com.ldap.dao.ClientDao;
import com.ldap.model.Client;  


@Repository("clientDao")
public class ClientDaoImpl implements ClientDao {

	@Autowired  
	 SessionFactory sessionFactory;  
	  
	 @Override  
	 @Transactional  
	 public String insertRow(Client client) {  
	  Session session = sessionFactory.openSession();  
	  Transaction tx = session.beginTransaction();  
	  session.saveOrUpdate(client);  
	  tx.commit();  
	  Serializable numCli = session.getIdentifier(client);  
	  session.close();  
	  return (String) numCli;  
	 }  
	  
	 @Override  
	 public List<Client> getList() {  
	  Session session = sessionFactory.openSession();  
	  @SuppressWarnings("unchecked")  
	  List<Client> clientList = session.createQuery("from Client")  
	    .list();  
	  session.close();  
	  return clientList;  
	 }  
	  
	 @Override  
	 public Client getRowByNumCli(String numCli) {  
	  Session session = sessionFactory.openSession();  
	  Client client = (Client) session.load(Client.class, numCli);  
	  return client;  
	 }  
	  
	 @Override  
	 public String updateRow(Client client) {  
	  Session session = sessionFactory.openSession();  
	  Transaction tx = session.beginTransaction();  
	  session.saveOrUpdate(client);  
	  tx.commit();  
	  Serializable numCli = session.getIdentifier(client);  
	  session.close();  
	  return (String) numCli;  
	 }  
	  
	 @Override  
	 public String deleteRow(String numCli) {  
	  Session session = sessionFactory.openSession();  
	  Transaction tx = session.beginTransaction();  
	  Client client = (Client) session.load(Client.class, numCli);  
	  session.delete(client);  
	  tx.commit();  
	  Serializable ids = session.getIdentifier(client);  
	  session.close();  
	  return (String) ids;  
	 }  
	  
	
}
