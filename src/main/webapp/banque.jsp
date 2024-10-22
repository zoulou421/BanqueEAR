<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>Banque of Africa</h1>
   <div id="formBanque">
     <form action="BanqueServlet" method="post">
       <table>
        <tr>
          <td>Code1:</td>
           <td>
             <input type="text" name="code1" />
           </td>
        </tr>
        
        <tr>
          <td>Code2:</td>
           <td>
             <input type="text" name="code2" />
           </td>
        </tr>
        
        <tr>
          <td>Montant:</td>
           <td>
             <input type="text" name="montant" />
           </td>
        </tr>
        
        <tr>
          <td>Montant:</td>
           <td>
             <input type="text" name="montant" />
           </td>
        </tr>
        
        <tr>
           <td><input type="submit" name="action" value="Verser" /></td>
           <td><input type="submit" name="action" value="Retirer" /></td>
           <td><input type="submit" name="action" value="Virement" /></td>
        </tr>
       </table>
     </form>
   </div>
   
   <div>
      <table border="1">
        <tr>
         <th>CODE</th> <th>Solde</th> <th>Date Création</th> <th>Activé</th>
        </tr>
        <c:forEach items="${list_ejb}" var="cp">
          <tr>
            <td>${cp.code}</td>
            <td>${cp.solde}</td>
            <td>${cp.dateCreation}</td>
            <td>${cp.active}</td>
          </tr>
        </c:forEach>
      </table>
   </div>
</body>
</html>