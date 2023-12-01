<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header><jsp:include page="/WEB-INF/pages/employeeMenu.jsp" /></header>

<t:pageTemplate pageTitle="Employee Administration">
  <h1>List</h1>
    <div class="container text-center">
      <c:forEach var="employee" items="${employees}">
      <div class="row">
        <div class="col">
          ${employee.name}
        </div>
        <div class="col">
            ${employee.dob}
        </div>
      </div>
      </c:forEach>
      </div>
  </t:pageTemplate>

