<%@ page language="java" contentType="text/html; charset=UTF-8"  
 pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Liste</title>  
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
  
   
  &nbsp;&nbsp;  <u>Liste des clients</u>
  
  
   <br><br>
  <c:if test="${!empty clientList}">  
   <table bgcolor="black" width="750px" >  
    <tr  
     style="background-color: teal; color: white; text-align: center;"  
     height="40px">  
       
     <td style="width:120px;">Numero  </td>  
     <td style="width:120px;">Nom  </td>  
     <td style="width:120px;">Adresse  </td>  
     <td style="width:120px;">Solde </td>  
     <td>Actions</td>  
    
    </tr>  
    <c:forEach items="${clientList}" var="client">  
     <tr  
      style="background-color: white; color: black; text-align: center; width:300px;"  
      height="30px">  
        
      <td><c:out value="${client.numCli}" />  
      </td>  
      <td><c:out value="${client.nomCli}" />  
      </td>  
      <td><c:out value="${client.adrCli}" />  
      </td>  
      <td><c:out value="${client.soldeCli}" />  
      </td>  
      <td>
      
       <a href="view?numCli=${client.numCli}" style="color: #2024FF;">Afficher</a>  
      
       |&nbsp;&nbsp;
      
      <a href="edit?numCli=${client.numCli}" style="color: #2024FF;">Modifier</a> 
      &nbsp;&nbsp;|&nbsp;&nbsp;
      <a href="delete?numCli=${client.numCli}" style="color: #2024FF;">Supprimer</a>  
      
     
     
      </td>
      
     </tr>  
    </c:forEach>  
   </table>  
  </c:if>  
  
  <br><br>
  
  
  
  <a href="form" style=" text-decoration:none; 
   
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
    text-shadow: 0 1px 0 #fafafa;">Ajouter</a>  
 
 
 
 <br>
 <br>
  
  </div>  
 </center>  
 
 <br>
 <br>
 <br>
 
 </div>
 
</body>  
</html>  