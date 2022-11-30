<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>


  <%--JSP表达式
  作用：用来将程序的输出，输出到客户端
  <%= 变量或者表达式%>
  --%>

  <%= new Date()%>

  <hr>

  <%--jsp脚本片段--%>
  <%
    int sum = 0;
    for (int i = 1; i <=100 ; i++) {
      sum+=i;
    }
    out.println("<h1>Sum="+sum+"</h1>");
  %>


  <%
    int x = 10;
    out.println(x);
  %>
  <p>这是一个JSP文档</p>
  <%
    int y = 2;
    out.println(y);
  %>

  <hr>


  <%--在代码嵌入HTML元素--%>
  <%--EL表达式--%>
  <% for (int i = 0; i < 5; i++) { %>
    <h1>Hello,World</h1>
  <% } %>




  <hr>


  <%!
    static {
      System.out.println("Loading Servlet!");
    }

    private int globalVar = 0;

    public void kuang(){
      System.out.println("进入了方法Kuang！");
    }
  %>

  <!--我是HTML的注释-->
  <%--我是JSP的注释--%>

  </body>
</html>
