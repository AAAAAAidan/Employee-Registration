<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>Registration Page</title>
  </head>
  <jsp:useBean id="userBean" class="org.perscholas.model.Employee" scope="request"></jsp:useBean>
  <jsp:setProperty name="userBean" property="*" />
  <% if (request.getParameter("register") != null) { %>
    <jsp:forward page="success.jsp">
      <jsp:param value="Registration Successful" name="message" />
    </jsp:forward>
  <% } %>
  <body>
    <h2 style="font-size: 25px">Enter Details</h2>
    <form>
      <table>
        <tr>
          <td>First Name</td>
          <td><input type="text" name="fName"></td>
        </tr>
        <tr>
          <td>Last Name</td>
          <td><input type="text" name="lName"></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><input type="password" name="password"></td>
        </tr>
        <tr>
          <td>User Name</td>
          <td><input type="text" name="uName"></td>
        </tr>
        <tr>
          <td>Gender</td>
          <td>
            <input type="radio" name="gender" value="male">Male <br />
            <input type="radio" name="gender" value="female">Female
          </td>
        </tr>
        <tr>
          <td>Hobbies</td>
          <td>
            <input type="checkbox" name="hobbies" value="dance">Dance <br />
            <input type="checkbox" name="hobbies" value="music">Music <br />
            <input type="checkbox" name="hobbies" value="sports">Sports <br />
            <input type="checkbox" name="hobbies" value="painting">Painting
          </td>
        </tr>
        <tr>
          <td>Designation</td>
          <td>
            <select name="designation">
              <option selected="selected">--select--
              <option value="1">Manager</option>
              <option value="2">Trainee</option>
              <option value="3">Developer</option>
            </select>
          </td>
        </tr>
        <tr>
          <td colspant="2">
            <input type="submit" value="Register" name="register" />
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>
