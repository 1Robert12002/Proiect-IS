<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:pageTemplate pageTitle="Employee Administration">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <title>Login Page</title>
    </head>
    <body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="${pageContext.request.contextPath}">Administration</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">

                </div>
            </div>
        </nav>
    </header>

    <main class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">

                <div class="card">
                    <div class="card-body">
                        <h2 class="card-title text-center mb-4">Login</h2>
                        <form>
                            <div class="mb-3">
                                <label for="username" class="form-label">Username:</label>
                                <input type="text" class="form-control" id="username" name="username" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password:</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block" onclick="location.href='/WEB-INF/pages/landing.jsp';">Login</button>
                            <a class="nav-link
                        ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf
("/")) eq '/employee.jsp' ? ' active' : ''}" aria-current="page" href="${pageContext.request.contextPath}/Employee">Employee</a>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer style="position: fixed; bottom: 0; width: 100%; padding: 10px; text-align: center; color: black;">
        <div class="container">
            <p>&copy; <span id="currentYear"></span> Echipa 6</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <script>
        document.getElementById("currentYear").textContent = new Date().getFullYear();
    </script>
    </body>
    </html>
</t:pageTemplate>