<%@ page language="java" contentType="text/html; charset=UTF-8"  
 pageEncoding="UTF-8"%>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>View</title>  
</head>  

<body style="background-color: #fff /*#81C2B8*/; font-family: Cambria;">  


<div style="height:55px; background-color: #334747; margin-top:-10px; margin-left:-10px; margin-right:-10px;
 width:101.3%;">

<br>

<div style="margin-left:255px; color:#dadada; text-decoration: none;">
<a href="list" style="text-decoration: none; font-size:16px; color:#cacaca; font-family:cambria;">
Liste des clients
</a>
</div>


<div style="margin-left:410px; margin-top:-19px; color:#dadada; text-decoration: none;">
<a href="form" style="text-decoration: none; font-size:16px; color:#cacaca; font-family:cambria; 
hover { background-color: #FFF;}">
Ajout d'un client
</a>
</div>


<div style="float:right; margin-right:262px; margin-top:-18px;text-decoration: none;">
 <a href="<c:url value="/logout" />" style="text-decoration: underline; font-size:15px; 
  color:#29A3CC;  font-family:cambria; ">Logout</a>
</div>

<div style="clear:inherit;float:right; margin-right:330px; margin-top:-28px;text-decoration: none;">
 	<a href="javascript:window.print()" style="text-decoration: underline; font-size:15px; 
  		color:#29A3CC;  font-family:cambria; ">
  		<img src="<c:url value="resources/image/print.png" />" alt="Imprimer"  height="35" width="35"/>
  	</a>
</div>

</div>

<div style="height: 60px;">

</div>

<!-- 
<div style="margin:auto auto;
	width: 1024px;
	height: auto; background-color: #F9F9F9;"> -->


  
   <div style="color: teal; font-size: 30px; margin-left: 245px;">Gestion | Clients</div>  
  
  
  <center>  
  
  <br><br>
  
   <div style="width: 850px; height: auto; border: 2px solid #000; background-color:#fff;  box-shadow:0px 0px 10px teal;
    box-shadow:0px 0px 10px teal;">
  
  <br><br>
  
  
   &nbsp;&nbsp;  <u>Détails du client</u>
  
  
   <br><br><br>
  
  
  
  <c:url var="clientRegistration" value="saveClient.html" />  
  <form:form id="registerForm" modelAttribute="client" method="post"  
   action="view">  
   
   <table width="400px" height="150px"> 
   
    
    <tr>  
     <td><form:label path="numCli">Numero : </form:label></td>  
     <td><form:input path="numCli" value="${clientObject.numCli}" style="padding-left: 10px;
    font-family:Cambria;
    font-size: 14px;
    border: 0.1em solid  #81C2B8;
    border-radius: 5px;
    margin-left: 35px;
    width: 270px;
    height: 22px;"/></td>  
    </tr>  
    
    
    <tr>  
     <td><form:label path="nomCli">Nom :</form:label></td>  
     <td><form:input path="nomCli" value="${clientObject.nomCli}" style="padding-left: 10px;
    font-family:Cambria;
    font-size: 14px;
    border: 0.1em solid  #81C2B8;
    border-radius: 5px;
    margin-left: 35px;
    width: 270px;
    height: 22px;"/></td>  
    </tr>  
    
    
    <tr>  
     <td><form:label path="adrCli">Adresse : </form:label></td>  
     <td><form:input path="adrCli" value="${clientObject.adrCli}" style="padding-left: 10px;
    font-family:Cambria;
    font-size: 14px;
    border: 0.1em solid  #81C2B8;
    border-radius: 5px;
    margin-left: 35px;
    width: 270px;
    height: 22px;"/></td>  
    </tr>  
    
    
    <tr>  
     <td><form:label path="soldeCli">Solde : </form:label></td>  
     <td><form:input path="soldeCli" value="${clientObject.soldeCli}" style="padding-left: 10px;
    font-family:Cambria;
    font-size: 14px;
    border: 0.1em solid  #81C2B8;
    border-radius: 5px;
    margin-left: 35px;
    width: 270px;
    height: 22px;"/></td>  
    </tr>  
    
    
    <tr>  
     <td></td>  
     <%--<td><input type="submit" value="Update" /></td>  --%>
    </tr>  
   </table>  
   
   
  
   
   <br>
  </form:form>  
  
  
  <a href="list" style="color: #2024FF;">Liste des Clients</a>
  
  
 <br>
 <br>
 <br>
  
  </div>  
 </center>  
 
 <br>
 <br>
 <br>
 
 
 
</body>  
</html>  
