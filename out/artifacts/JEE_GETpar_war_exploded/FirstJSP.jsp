<%--
  Created by IntelliJ IDEA.
  User:  Marina
  Дата:  02.05.2020
  Время: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ПЕРВЫЙ JSP</title>
</head>
<body>
<h1>Проверка JSP</h1>
<p>
    <%= "Приветы всем-всем! " %>
    <%= new java.util.Date() %>
</p>
<p>
    <%= "Посложнее..." %>
    <%
        java.util.Date now = new java.util.Date();
        String nowString = "Текущая дата : " + now;
    %>
    <%= nowString %>
</p>
<p>
    <%= "Переменная out для вывода без '=' : " %>
    <%
        double pi = Math.PI;
        // вкрапления java в код html
        for (int i=0; i<8; i++) {
            out.println(" -> вывод : " + i );
        }
        for (int i=0; i<5; i++) {
            out.println("<p> вывод : " + i +"</p>");
        }
    %>
</p>
<p>
    <%= "Параметры запроса : " %>
    <%
        // считываем параметры из request
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");

        out.println("<p> Привет, " + name + " " + surname+ " </p>");
    %>
</p>

</body>
</html>
