<!doctype html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<div class="card w-25 m-auto mt-4 border-primary">
    <div class="card-body">
        <p>${info.getName()}</p>
        <p>${info.getDescription()}</p>
    </div>
</div>
<jsp:include page="scripts.jsp"></jsp:include>
</body>
</html>