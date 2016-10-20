<%@ page language="java" contentType="text/html; charset=UTF-8"  
 pageEncoding="UTF-8"%>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head> 


<link href="<c:url value='/css/style.css'/>"/>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Ajout</title>  
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


<div style="float:right; margin-right:270px; margin-top:-18px;text-decoration: none;">
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
	height: auto; background-color: #F9F9F9;"> 

<img src="<c:url value="resources/image/print.png" />" width="150" height="200"/>-->
  
  
  
  <div style="color: teal; font-size: 30px; margin-left: 245px;">Gestion | Clients</div>  
  
 <center>   
 
  <br><br>
  
   <div style="width: 850px; height: auto; border: 2px solid #000; background-color:#fff;  box-shadow:0px 0px 10px teal;
    box-shadow:0px 0px 10px teal;">
  
  <br><br>
  
   
  &nbsp;&nbsp;  <u>Ajout d'un nouveau client</u>
  
  
   <br><br><br>
  
  
  <c:url var="clientRegistration" value="saveClient.html" />  
  <form:form id="registerForm" modelAttribute="client" method="post"  
   action="register">  
   
  
   
   <table width="400px" height="150px">  
   
   
    <tr>  
     <td><form:label path="numCli">Numero :</form:label>  
     </td>  
     <td><form:input path="numCli" style="padding-left: 10px;
    font-family:Cambria;
    border: 0.1em solid  #81C2B8;
    border-radius: 5px;
    margin-left: 35px;
    width: 270px;
    height: 22px;"/>  
     </td>  
    </tr> 
    
     
    <tr>  
     <td><form:label path="nomCli">Nom :</form:label>  
     </td>  
     <td><form:input path="nomCli" style="padding-left: 10px;
    font-family:Cambria;
    border: 0.1em solid  #81C2B8;
    border-radius: 5px;
    margin-left: 35px;
    width: 270px;
    height: 22px;"/>  
     </td>  
    </tr> 
    
     
    <tr>  
     <td><form:label path="adrCli">Adresse :</form:label>  
     </td>  
     <td><form:input path="adrCli" style="padding-left: 10px;
    font-family:Cambria;
    border: 0.1em solid  #81C2B8;
    border-radius: 5px;
    margin-left: 35px;
    width: 270px;
    height: 22px;"/>  
     </td>  
    </tr>  
    
    
    <tr>  
     <td><form:label path="soldeCli">Solde :</form:label>  
     </td>  
     <td><form:input path="soldeCli" style="padding-left: 10px;
    font-family:Cambria;
    border: 0.1em solid  #81C2B8;
    border-radius: 5px;
    margin-left: 35px;
    width: 270px;
    height: 22px;"/>  
     </td>  
    </tr>  
    
    
    <tr>  
     <td></td>  
     <%--<td><input type="submit" value="Register" /></td> --%>
    </tr>  
   </table>  
   
   <br>
   <input type="submit" value="Ajouter" style=" text-decoration:none; 
   
  -moz-box-shadow: inset 0 0 0 1px #63ad0d;
    -webkit-box-shadow: inset 0 0 0 1px #63ad0d;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    background: #dadada;
    background: -webkit-gradient(linear, 0 0, 0 bottom, from(#eee), to(#e2e2e2));
    background: -moz-linear-gradient(#eee, #e2e2e2);
    background: linear-gradient(#eee, #e2e2e2);
    border: solid 1px #d0d0d0;
    border-bottom: solid 1px #b2b1b1;
    border-radius: 5px;
    box-shadow: inset 0 0 0 1px #f5f5f5;
    color: #555;
    display: inline-block;
    font: bold 14px Cambria, Helvetica, Clean, sans-serif;
    margin: 0 25px 25px 0;
    padding: 10px 20px;
    position: relative;
    text-align: center;
    text-decoration: none;
    text-shadow: 0 1px 0 #fafafa;" />
    
   
   <br>
  </form:form>  
  

  <a href="list" style="color: #2024FF; margin-left:-15px;">Liste des clients</a>
  

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
