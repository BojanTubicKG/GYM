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
<center>
      <h1>GYM</h1>
     <h1>Provide Memeber Information</h1>
     <div id="center">
     
    <hr />
    <f:form modelAttribute="member" action ="saveProcess">
      <table border="1">
      <f:hidden path="id" />
          <tr>
             <td>Name</td>
             <td><f:input path="name" /></td>     
          </tr> 
          <tr>
             <td>Email</td>
             <td><f:input path="email" /></td>     
          </tr> 
          <tr>
             <td>Data of Birth</td>
             <td><f:input path="dateofbirth" type="date"/></td>     
       
          </tr> 
          <tr>
             <td>Gender</td>
             <td>
                <f:radiobutton path="gender" value="Male"/>Male
                 <f:radiobutton path="gender" value="Female"/>Female
             </td>     
          </tr> 
          <tr>
             <td>Hobbies</td>
             <td>
                <f:select path="hobbies">
                  <f:option value="Don't have a hoby">Choose a hoby</f:option>                 
                  <f:option value="Cricket">Cricket</f:option>
                  <f:option value="Football">Football</f:option>
                  <f:option value="Volleyball">Volleyball</f:option>
                  <f:option value="Hockey">Hockey</f:option> 
                  <f:option value="Movies">Movies</f:option>
                  <f:option value="Hiking">Hiking</f:option>
                  <f:option value="Swimming">Swimming</f:option>          
                </f:select>
             
             </td>     
          </tr>
          <tr>
             <td>Address</td>
             <td><f:textarea path="address" /></td>     
          </tr> 
          <tr>
          <td></td>
          <td>
             <input type="submit" value="Submit">&nbsp;
             <input type="reset" value="Reset">
          </td> 
          </tr>
      </table>     
    </f:form>
    
    <a href="ListMembers">Click here to go for List of Members</a>
    
    <hr />
    </div>
</center>
</body>
</html>