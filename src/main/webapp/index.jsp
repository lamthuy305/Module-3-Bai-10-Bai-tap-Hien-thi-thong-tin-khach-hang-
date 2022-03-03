<%@ page import="java.util.List" %>
<%@ page import="com.codegym.Customer" %>
<%@ page import="java.util.ArrayList" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        table, tr, td{
            border: 1px solid;
        }
        td{
            width: 150px;
            height: 120px;
        }
        #abc{
            text-align: center;
        }
    </style>
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Tuấn Cường", "2003-8-6", "Đăk Lăk", "/img/1.png"));
    customers.add(new Customer("Nguyễn Ngọc Bách", "1997", "Hà Nội", "/img/2.png"));
    customers.add(new Customer("Á Đù Tình", "1997", "Hà Nội", "/img/3.png"));
    pageContext.setAttribute("listCustomers", customers);
%>
<table>
    <tr id="abc">
        <td><b>Họ và tên</b></td>
        <td><b>Ngày sinh</b></td>
        <td><b>Địa chỉ</b></td>
        <td><b>Ảnh</b></td>
    </tr>

    <c:forEach var="customer" items="${listCustomers}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.img}" alt="" height="120px" width="150px"></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
