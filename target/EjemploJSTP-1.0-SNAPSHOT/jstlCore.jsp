<%-- 
    Document   : jstlCore
    Created on : 15-ene-2023, 20:38:08
    Author     : tester
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>JSTL CORE</h1>
        <br><!-- Manipulacion de Variable -->
        <c:set var="nombre" value= "Ernesto"/>
        Variable nombre : <c:out value= "${nombre}"/>
        <br><!-- Variable codigo html -->
        <c:out value= "<h1>Hola desde core</h1>" escapeXml="false"/>
        <br><!-- Condicion if -->
        <c:set var="bandera" value="true"/>
        <c:if test="${bandera}">
            
            La bandera es verdadera
        </c:if>
        <br><!-- Condicion switch -->
        <c:if test ="${param.opcion != null}">

            <c:choose>  
                <c:when test = "${param.opcion == 1}">
                    <br>
                    Opcion 1 seleccionada 
                </c:when>

                <c:when test = "${param.opcion == 2}">
                    <br>
                    Opcion 2 seleccionada 
                </c:when> 
            </c:choose>     
        </c:if>
                    
        <br><!-- comment -->
        
        <%
            
        String nombres []= {"Werty", "Qasd", "Errvb"};
        request.setAttribute("nombres", nombres);    

        %>
        
        <br><!-- comment -->
       
        <ul>
            <c:forEach var="persona" items="${nombres}">
                
                <li>nombre: ${persona}</li>  
                
            </c:forEach>
            
        </ul>
        
    </body>
    
</html>
