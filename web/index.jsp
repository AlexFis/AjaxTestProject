<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.berest.entities.Student" %>
<%@ page import="com.berest.dao.DaoConnectImpl" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Ajax Project</title>
</head>
<body>
<%
  String name = request.getParameter("val");
  List<Student> studentList = new DaoConnectImpl().showStudent(name);
  if ((name.isEmpty()) || (name.trim().equals(""))) { %>
<b>Please, make sure you enter valid name (not empty line)</b>
<% } else if (!studentList.isEmpty()) { %>
<table class="table table-bordered">
  <thead>
  <tr>
    <th scope="col">#</th>
    <th scope="col">ID</th>
    <th scope="col">NAME</th>
    <th scope="col">SALARY</th>
  </tr>
  </thead>
  <% for (int i = 0; i < studentList.size(); i++) { %>
  <tbody>
  <tr>
    <th scope="row">i</th>
    <td>
      <%= studentList.get(i).getId() %>
    </td>
    <td>
      <%= studentList.get(i).getName() %>
    </td>
    <td>
      <%= studentList.get(i).getSalary() %>
    </td>
  </tr>
  </tbody>
  <% } %>
</table>
<% } else { %>
<b>There's no any record</b>
<% } %>
</body>
</html>
