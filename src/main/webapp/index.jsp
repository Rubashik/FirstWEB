<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1{
                text-align: center;
            }
            #page {
                width: 800px;
                margin:auto;
            }
            from{
                width:400px;
                margin:auto;
            }
            input[type=submit]{
                margin:auto;
            }
            .list, .list td, .list th {
                margin: auto;
                border: 1px solid black;
                border-collapse: collapse;
            }
            .list td, .list th {
                padding: 10px;
            }
            body{
                background-image: linear-gradient(
                                    to bottom,
                                    rgba(255, 255, 0, 0.5),
                                    rgba(0, 0, 255, 0.5)
                                    );
                background-size: 100% 100%;
                background-repeat: no-repeat;
                background-attachment: fixed; 
            }
        </style>
    </head>
    <body>
        <div id="page">
            <h1>Hello World!</h1>
            <form>
                <table>
                    <tbody>
                        <tr>
                            <td><label for="name"></label>Name</td>
                            <td><input id="name" type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td><label for="surname">Surname</label></td>
                            <td><input id="surname" type="text" name="surname"></td>
                        </tr>
                        <tr>
                            <td><label for="age">Age</label></td>
                            <td><input id="age" type="text" name="age"></td>
                        </tr>
                        <tr>
                            <td><label for="email">Email</label></td>
                            <td><input id="email" type="email" name="email"></td>
                        </tr>
                        <tr>
                            <td><label for="group">Group</label></td>
                            <td><input id="group" type="text" name="group"></td>
                        </tr>
                        <tr>
                            <td><label for="faculty">Faculty</label></td>
                            <td><input id="faculty" type="text" name="faculty"></td>
                        </tr>
                    </tbody>
                </table>
                <input type="submit" name="send" value="Отправить">
            </form>
            <c:if test="${students.size()>0}">
                <table class="list">
                    <tr>
                        <th>Name</th>
                        <th>Surname</th>
                        <th>Age</th>
                        <th>Email</th>
                        <th>Group</th>
                        <th>Faculty</th>
                    </tr>
                    <c:forEach var="student" items="${students}">
                        <tr>
                            <td><c:out value="${student.getName()}"/></td>
                            <td><c:out value="${student.getSurname()}"/></td>
                            <td><c:out value="${student.getAge()}"/></td>
                            <td><c:out value="${student.getEmail()}"/></td>
                            <td><c:out value="${student.getGroup()}"/></td>
                            <td><c:out value="${student.getFaculty()}"/></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
        </div>
    </body>
</html>
