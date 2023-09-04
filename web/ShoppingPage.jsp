<%-- 
    Document   : ShoppingPage
    Created on : Aug 27, 2023, 11:48:03 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Image</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var= "o" begin="1" end="3">
                    <tr>
                        <td>1</td>
                        <td>Kẹo dừa</td>
                        <td>Thơm ngon</td>
                        <td>Ảnh kẹo dừa</td>
                        <td>50</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>





    </body>
</html>
