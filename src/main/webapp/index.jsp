<%@ page import="com.codegym.model.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: kubap
  Date: 03/03/2022
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<style>
    h2.center {
        text-align: center;
    }
</style>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Nguyễn Văn Toàn", "15-06-1987", "Hà Nội", "/img/1.jpeg"));
    customers.add(new Customer("Nguyễn Quỳnh Hoa", "05-08-1993", "Hà Nội", "/img/2.jpeg"));
    customers.add(new Customer("Ngô Quốc Việt", "15-06-2003", "Yên Bái", "/img/3.jpeg"));
    customers.add(new Customer("Nguyễn Thanh Lịch", "15-10-1991", "Nghệ An", "/img/4.jpeg"));
    customers.add(new Customer("Nguyễn Khắc Tú", "21-06-1988", "Bắc Ninh", "/img/5.jpeg"));
    pageContext.setAttribute("listCustomer", customers);
%>
<h2 class="center"> Danh sách khách hàng</h2>
<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">Tên</th>
        <th scope="col">Ngày sinh</th>
        <th scope="col">Địa chỉ</th>
        <th scope="col">Ảnh chân dung</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${listCustomer}">
        <tr>
            <th scope="row">${customer.name}</th>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.image}" alt="ảnh chân dung" width="100" height="100"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</body>
</html>
