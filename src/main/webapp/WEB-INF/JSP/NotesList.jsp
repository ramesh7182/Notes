<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
     <%@ page import="java.util.ArrayList" %>
     <%@ page import="java.io.InputStream" %>
     <%@ page import="java.net.URL" %>
     <%@ page import="java.net.URLConnection" %>
      <%@ page import="java.io.BufferedReader" %>
          <%@ page import="com.notesrk.CommonMethod" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All List of notes</title>
</head>
<body>
<h1>The List of notes are below :- </h1>
<table border=1><tr bgcolor=green>
<th>ID</th>
<th>Title</th>
<th>Description</th>
<th>Category</th>
<th>Sub Category</th>
<th>Date Added</th>
<th>Due Date</th>
<th>Priority</th>
<th>Author</th>
<th>Assign To</th>
<th>Status</th>
<th>Comments</th>
</tr>
<%
URL url = new URL("http://localhost:8080/NotesService/notes");

out.println(CommonMethod.getDataFromJSON(CommonMethod.getStringFromJSONAPI(url)));

%>
</table>
</body>
</html>