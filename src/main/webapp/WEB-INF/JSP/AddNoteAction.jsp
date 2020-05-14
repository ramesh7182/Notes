<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.net.URL" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="com.notesrk.CommonMethod" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Note</title>
</head>
<body>
Your note has been saved successfully.
<%=request.getParameter("title")%>
<br>
<%=request.getParameter("description")%>
<br>
<%=request.getParameter("subcategory")%>
<br>
<%=request.getParameter("dateadded")%>
<br>
<%=request.getParameter("duedate")%>
<br>
<%=request.getParameter("author")%>
<br>
<%=request.getParameter("assignedTo")%>
<br>
<%=request.getParameter("status")%>
<br>
<%=request.getParameter("comments")%>
<br>
</body>
</html>