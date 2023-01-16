<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

<div class="container w-50 m-auto mt-4">
    <form action="${pageContext.request.contextPath}/updateInfo" method="post">
        <div class="mb-3">
            <label  class="form-label">Site Info Id</label>
            <input type="number" class="form-control" name="id_2" disabled value="${info.getId()}">
            <input type="hidden" class="form-control" name="id" value="${info.getId()}">
        </div>
        <div class="mb-3">
            <label for="name" class="form-label text-primary fw-bold">Name</label>
            <input type="text" value="${info.getName()}" name="name" class="form-control border-primary" id="name"  placeholder="Name of the site">
        </div>
        <div class="mb-3">
            <label for="description" class="form-label text-primary fw-bold">Description</label>
            <input type="text" value="${info.getDescription()}" name="description" class="form-control border-primary"  id="description" placeholder="Description of site">
        </div>
        <input type="submit" value="submit" class="btn btn-primary">
    </form>
</div>
</form>
</body>
</html>