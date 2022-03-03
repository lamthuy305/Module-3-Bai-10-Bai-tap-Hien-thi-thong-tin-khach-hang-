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
            height: 100px;
        }
        #abc{
            text-align: center;
        }
    </style>
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Tuấn Cường", "2003-8-6", "Đăk Lăk", "https://hthaostudio.com/wp-content/uploads/2020/06/anh-doanh-nhan-dep-1180x760.jpg"));
    customers.add(new Customer("Nguyễn Ngọc Bách", "1997", "Hà Nội", "http://studiochupanhdep.com//Upload/Images/Product/anh-cuc-hoa-mi-2019.png"));
    customers.add(new Customer("Á Đù Tình", "1997", "Hà Nội", "https://cdn.dealtoday.vn/img/s630x420/f16250e7fde0474d8693fd92efd7c9af.jpg?sign=N9MoF3xpavyOJLhQ2WEdpw"));
    pageContext.setAttribute("customers", customers);
%>
<table>
    <tr id="abc">
        <td><b>Họ và tên</b></td>
        <td><b>Ngày sinh</b></td>
        <td><b>Địa chỉ</b></td>
        <td><b>Ảnh</b></td>
    </tr>

    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.img}" alt="" height="100px" width="150px"></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
