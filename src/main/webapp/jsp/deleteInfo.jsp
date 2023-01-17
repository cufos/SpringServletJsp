<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<c:if test="${operation == true}">
    <div class="alert alert-success" role="alert">
        Info deleted correctly
    </div>
</c:if>
<c:if test="${id_not_found == true}">
    <div class="alert alert-success" role="alert">
        id not found
    </div>
</c:if>

<div class="container w-50 m-auto mt-4">
    <form action="${pageContext.request.contextPath}/admin/deleteInfo" method="post">
        <div class="mb-3">
            <label for="id" class="form-label text-primary fw-bold">Id</label>
            <input type="number" name="id" class="form-control border-primary" id="id" placeholder="The id of the site">
        </div>

        <input type="submit" value="submit" class="btn btn-danger">
    </form>
</div>
</form>
<jsp:include page="scripts.jsp"></jsp:include>
</body>
</html>