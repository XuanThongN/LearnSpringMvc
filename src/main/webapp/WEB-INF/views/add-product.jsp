<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome page</title>

    <!-- Add Bootstrap CSS via CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container w-50">
    <h1 class="mt-5 mb-4 text-center">Add Product</h1>

    <form:form action="saveProduct" method="post" modelAttribute="product">
        <div class="mb-3">
            <form:label path="name" class="form-label">Tên sản phẩm:</form:label>
            <form:input path="name" class="form-control"/>
            <form:errors path="name" class="text-danger"/>
        </div>

        <div class="mb-3">
            <form:label path="price" class="form-label">Giá:</form:label>
            <form:input path="price" class="form-control"/>
            <form:errors path="price" class="text-danger"/>
        </div>

        <c:if test="${not empty error}">
            <div class="alert alert-danger">
                Message: ${error}
            </div>
        </c:if>
        <c:if test="${not empty success}">
            <div class="alert alert-success">
                Message: ${success}
            </div>
        </c:if>

        <div class="text-center">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
        <a href="${pageContext.request.contextPath}/">Back to Product List</a>
    </form:form>
</div>

<!-- Add Bootstrap JavaScript and Popper.js via CDN (required for some Bootstrap features) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@2.9.3/dist/umd/popper.min.js"></script>

</body>
</html>
