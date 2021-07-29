<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.perscholas.model.*" %>
<html>
    <head>
        <title>Success Page</title>
        <style type="text/css">
            html, body {
                height: 100%;
            }
            td {
                border: 1px solid blue;
            }
            table {
                border: 2px solid red;
            }
        </style>
    </head>
    <jsp:useBean id="userBean" class="org.perscholas.model.Employee" scope="request"></jsp:useBean>
    <body>
        <% String designation = request.getParameter("designation");
           if (designation.equals("1")) { %>
            <jsp:include page="managersheading.jsp">
                <jsp:param value="<%= userBean.getfName() %>" name="name" />
            </jsp:include>
        <% } else if (designation.equals("2")) { %>
            <jsp:include page="traineesheading.jsp">
                <jsp:param value="<%= userBean.getfName() %>" name="name" />
            </jsp:include>
        <% } else if (designation.equals("3")) { %>
            <jsp:include page="developersheading.jsp">
                <jsp:param value="<%= userBean.getfName() %>" name="name" />
            </jsp:include>
        <% } %>
        <h1 style="color: green"><%= request.getParameter("message") %></h1>
        <h1>Registration Details</h1>
        <table>
            <tr>
                <td>First Name</td>
                <td><jsp:getProperty property="fName" name="userBean" /></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><jsp:getProperty property="lName" name="userBean" /></td>
            </tr>
            <tr>
                <td>User Name</td>
                <td><jsp:getProperty property="uName" name="userBean" /></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><jsp:getProperty property="gender" name="userBean" /></td>
            </tr>
            <% String hobbies[] = userBean.getHobbies(); %>
            <tr>
                <td>Hobbies</td>
                <td>
                    <%
                        if (hobbies != null) {
                            for (String hobby : hobbies) {
                                out.print(hobby + ", ");
                            }
                        }
                    %>
                </td>
            </tr>
        </table>
    </body>
</html>
