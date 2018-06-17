<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.net.URL" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="com.notesrk.CommonMethod" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Viewing Note</title>
</head>
<body>
<h1>The Note is below - </h1>
<table border=1>
<%
String noteid = request.getParameter("id");
URL url = new URL("http://localhost:8080/NotesService/notes"+"?id="+noteid);
out.println();
LinkedHashMap<String,String> rowData =CommonMethod.getHashMapFromSingleRow(CommonMethod.getStringFromJSONAPI(url)); 
for( String key : rowData.keySet())
{
	
	    	out.print("<tr>");
			out.println("<td bgcolor='#CCE5FF'>");
			out.print(key);
			out.print("</td>");
			out.println("<td>");
			out.print(rowData.get(key));
			out.print("</td>");
			out.print("</tr>");
	
}
%>
</table>
</body>
</html>