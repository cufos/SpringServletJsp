<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<h1 class="mt-4 mb-4 text-center text-primary fw-normal">Detail Page</h1>
<div class="container w-50 m-auto">

    <table class="table table-bordered border-primary">
        <thead class="table-info border-primary">
            <tr class="text-primary">
                <th scope="col">Name</th>
                <th scope="col">Description</th>
                <th scope="col">Delete</th>
                <th scope="col">Update</th>
            </tr>
        </thead>

        <tbody>
        <c:forEach items="${detail}" var="detail">
            <tr>
                <td>
                    <c:out value="${detail.getName()}" />
                </td>
                <td>
                    <c:out value="${detail.getDescription()}" />
                </td>
                <td>
                    <button type="button" class="btn btn-danger m-auto">
                        <a class="text-light" href="${pageContext.request.contextPath}/deleteInfo?id=<c:out value="${detail.getId()}" />">
                            Delete
                        </a>
                    </button>
                </td>
                <td>
                    <button type="button" class="btn btn-success m-auto">
                        <a class="text-light" href="${pageContext.request.contextPath}/updateInfo?id=<c:out value="${detail.getId()}" />">
                            Update
                        </a>
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>