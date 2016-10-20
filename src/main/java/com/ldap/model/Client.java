package com.ldap.model;

import javax.persistence.Column;  
import javax.persistence.Entity;  
import javax.persistence.GeneratedValue;  
import javax.persistence.Id;

@Entity

public class Client {

	@Id   
	 @Column(name = "numCli")   
	 private String numCli;  
	  
	 @Column(name = "nomCli")  
	 private String nomCli;  
	  
	 private String adrCli;  
	 private String soldeCli;   
	  
	 public String getNumCli() {  
	  return numCli;  
	 }  
	  
	 public void setNumCli(String numCli) {  
	  this.numCli = numCli;  
	 }  
	  
	 public String getNomCli() {  
	  return nomCli;  
	 }  
	  
	 public void setNomCli(String nomCli) {  
	  this.nomCli = nomCli;  
	 }  
	  
	 public String getAdrCli() {  
	  return adrCli;  
	 }  
	  
	 public void setAdrCli(String adrCli) {  
	  this.adrCli = adrCli;  
	 }  
	  
	 public String getSoldeCli() {  
	  return soldeCli;  
	 }  
	  
	 public void setSoldeCli(String soldeCli) {  
	  this.soldeCli = soldeCli;  
	 }  
	
}
