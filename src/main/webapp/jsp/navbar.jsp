<div class="bg-black w-full fixed">
    <div class="max-w-5xl m-auto flex flex-row items center p-4 justify-between text-white">
        <h1 class="text-xl">
            <a href="/">Fr@ncis</a>
        </h1>

        <div>
            <input class="hidden peer" id="toggle" type="checkbox">
            <label class="sm:hidden" for="toggle">
                <div class="space-y-2">
                    <div class="w-8 h-0.5 bg-white"></div>
                    <div class="w-8 h-0.5 bg-white"></div>
                    <div class="w-8 h-0.5 bg-white"></div>
                </div>
            </label>

                <ul class="sm:flex sm:flex-row sm:gap-2 hidden peer-checked:mt-5 peer-checked:pt-4 peer-checked:w-full peer-checked:bg-black peer-checked:h-2/4 peer-checked:fixed peer-checked:left-0 peer-checked:flex peer-checked:flex-col peer-checked:items-center peer-checked:gap-2">
                    <li>
                        <a class="hover:text-blue-400 transition-border duration-100 hover:border-b-2 hover:border-blue-400" href="/">Home</a>
                    </li>
                    <li>
                        <a class="hover:text-blue-400 hover:border-b-2 hover:border-blue-400" href="${pageContext.request.contextPath}/projects">Projects</a>
                    </li>
                    <li>
                        <a class="hover:text-blue-400 hover:border-b-2 hover:border-blue-400" href="${pageContext.request.contextPath}/skills">Skills</a>
                    </li>
                    <li>
                        <a class="hover:text-blue-400 hover:border-b-2 hover:border-blue-400" href="${pageContext.request.contextPath}/createproject">Create Project</a>
                    </li>
                </ul>
        </div>
    </div>
</div>
