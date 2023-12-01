<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}">Parking Lot</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link
                        ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf
("/")) eq '/about.jsp' ? ' active' : ''}" aria-current="page" href="${pageContext.request.contextPath}/about.jsp">About</a>
                    <li class="nav-item">
                        <a class="nav-link
                        ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf
("/")) eq '/cars.jsp' ? ' active' : ''}" aria-current="page" href="${pageContext.request.contextPath}/Cars">Cars</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link
                            ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf
                            ("/")) eq '/users.jsp' ? ' active' : ''}" aria-current="page" href="${pageContext.request.contextPath}/">Users</a>
                    </li>

                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<footer style="position: fixed; bottom: 0; width: 100%; padding: 10px; text-align: center; color: black;">
    <div class="container">
        <p>&copy; <span id="currentYear"></span> Echipa 6</p>
    </div>
</footer>
<script>
    document.getElementById("currentYear").textContent = new Date().getFullYear();
</script>