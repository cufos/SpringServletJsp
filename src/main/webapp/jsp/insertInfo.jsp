<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<c:if test="${operation == true}">
    <div class="alert alert-success" role="alert">
        Site info inserted correctly
    </div>
</c:if>
<div class="container w-50 m-auto mt-4">
    <form action="${pageContext.request.contextPath}/insertInfo" method="post">
        <div class="mb-3">
            <label for="name" class="form-label text-primary fw-bold">Name</label>
            <input type="text" name="name" class="form-control border-primary" id="name" placeholder="Name of the site">
        </div>
        <div class="mb-3">
            <label for="description" class="form-label text-primary fw-bold">Description</label>
            <input type="text" name="description" class="form-control border-primary" id="description" placeholder="Description of site">
        </div>
        <input type="submit" value="submit" class="btn btn-primary">
    </form>
</div>
</form>
</body>
</html>