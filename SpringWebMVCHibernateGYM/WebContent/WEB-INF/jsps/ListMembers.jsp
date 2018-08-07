<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

body{
background-color:#D3D3D3;
}
table{
background-color:#F7F7F7;
}
#center{
background-color:#EEE;

}


</style>

</head>
<body>


   <h1 align="center">GYM</h1>
   <h1 align="center">List of Members</h1>
   <div id="center">
   
   <hr />
   
   <p align="right">
   
   <button onclick="window.location.href='addMember'">Add Member</button>
   
   </p>
   <center>
   <table border="1">
     <tr>
       <th>Name</th>
       <th>Email</th>
       <th>Address</th>
       <th>Gender</th>
       <th>Hobby</th>
       <th>Date of birth</th> 
       <th>Action</th>
     </tr>
     <c:forEach items="${theMembers}" var="member">
     
     <c:url var="updateLink" value="showUpdateForm">
     
       <c:param name="memberId" value="${member.id}"/>
     
     </c:url>
     
     <c:url var="deleteLink" value="deleteRecord">
     
       <c:param name="memberId" value="${member.id}"/>
     
     </c:url>
   
         <tr>
           <td>${member.name}</td>
           <td>${member.email}</td>
           <td>${member.address}</td>
           <td>${member.gender}</td>
           <td>${member.hobbies}</td>
           <td>${member.dateofbirth}</td> 
           
           <td>
           
              <a href="${updateLink}">Update</a> | <a onclick="if(!(confirm('Are you sure want to delete the member')))return false" href="${deleteLink}">Delete</a>
           </td> 
         </tr>
      </c:forEach>
     
   </table>
   <hr />
   </center>
   </div>
   
   
   
   
   
</body>
</html>