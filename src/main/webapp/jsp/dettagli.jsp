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
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>