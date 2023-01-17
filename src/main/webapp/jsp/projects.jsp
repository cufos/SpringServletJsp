<%@taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="bg-black pb-4 text-white" id="projects">
    <h3 class="uppercase m-auto pt-4 mb-4 mt-4 text-xl border-b-4 border-cyan-400 w-min">Projects</h3>
    <div class="max-w-5xl m-auto pb-4 px-4">
        <article class="mb-3 p-4 border rounded border-cyan-400">
            <h4>Portfolio</h4>
            <p>My portfolio where i show all the projects that i have build to now</p>
            <a class="text-cyan-400 hover:border-b-2 hover:border-cyan-400" href="https://github.com/cufos/portfolio" target="_blank" rel="noreferrer noopener">Porfolio link</a>
            <div class="pt-2">
                <button type="button" class="text-green-400 border border-green-400 p-[.5rem] rounded hover:text-white hover:bg-green-400">Update</button>
                <button type="button" class="ml-3 text-red-400 border border-red-400 p-[.5rem] rounded hover:text-white hover:bg-red-400">Delete</button>
            </div>
        </article>
        <c:forEach items="projects" var="projects" >
            <article class="mb-3 p-4 border rounded border-cyan-400">
                <h4>
                    <c:out value="${projects.getName()}" />
                </h4>
                <p>
                    <c:out value="${projects.getDescription()}" />
                </p>
                <a class="text-cyan-400 hover:border-b-2 hover:border-cyan-400" href="<c:out value="${detail.getLink()}" />" target="_blank" rel="noreferrer noopener">
                    <c:out value="${projects.getLink()}" /> link
                </a>
                <div class="pt-2">
                    <button type="button" class="text-green-400 border border-green-400 p-[.5rem] rounded hover:text-white hover:bg-green-400">Update</button>
                    <button type="button" class="ml-3 text-red-400 border border-red-400 p-[.5rem] rounded hover:text-white hover:bg-red-400">Delete</button>
                </div>
            </article>
        </c:forEach>
    </div>
</div>