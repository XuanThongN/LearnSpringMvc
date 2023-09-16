<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>

    <!-- Add Bootstrap CSS via CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1>Update Product</h1>
    <form:form action="saveUpdateProduct" method="post" modelAttribute="product">
        <table class="table">
            <tr>
                <td><form:label path="id">ID:</form:label></td>
                <td><form:hidden path="id" class="form-control"/></td>
            </tr>
            <tr>
                <td><form:label path="name">Tên sản phẩm:</form:label></td>
                <td><form:input path="name" class="form-control"/>
                    <form:errors path="name" cssStyle="color:#d04c4c"/>
                </td>
            </tr>
            <tr>
                <td><form:label path="price">Giá:</form:label></td>
                <td><form:input path="price" class="form-control"/>
                    <form:errors path="price" cssStyle="color:red"/>
                </td>
            </tr>
            <tr>
                <c:if test="${not empty error}">
                    <td colspan="2" class="text-danger">Message: ${error}</td>
                </c:if>
                <c:if test="${not empty success}">
                    <td colspan="2" class="text-success">Message: ${success}</td>
                </c:if>
            </tr>
            <tr>
                <td colspan="2"><button type="submit" class="btn btn-primary">Submit</button></td>
            </tr>
        </table>
    </form:form>
</div>

<!-- Add Bootstrap JavaScript and Popper.js via CDN (required for some Bootstrap features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.9.3/dist/umd/popper.min.js"></script>
</body>
</html>
