<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-expand-lg bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand text-light" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active text-light" aria-current="page" href="${pageContext.request.contextPath}/">Home</a>
                </li>
                <sec:authorize access="isAuthenticated()">
                <li class="nav-item">
                    <a class="nav-link active text-light" aria-current="page" href="${pageContext.request.contextPath}/detail">Detail</a>
                </li>
                </sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">
                <li class="nav-item">
                    <a class="nav-link active text-light" aria-current="page" href="${pageContext.request.contextPath}/admin/insertInfo">Insert Info</a>
                </li>
                </sec:authorize>
                <sec:authorize access="hasRole('ADMIN')">
                <li class="nav-item">
                    <a class="nav-link active text-light" aria-current="page" href="${pageContext.request.contextPath}/admin/deleteInfo">Delete Info</a>
                </li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/logout">Logout</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/login">Login</a>
                    </li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>