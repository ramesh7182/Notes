<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.net.URL" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.notesrk.CommonMethod" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All List of notes</title>
<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous">
  </script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" media="screen" />
 <link th:href="@{../css/starter-template.css}" rel="stylesheet" media="screen" />
<link th:href="@{../css/datatables.min.css}" rel="stylesheet" media="screen" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.css"/>
 
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/plug-ins/1.10.20/api/fnSetFilteringDelay.js"></script>
<!-- script type="text/javascript" th:src="@{js/admin.js}"></script-->
<!--script type="text/javascript" th:src="@{../js/datatables.min.js}"></script-->
<!-- script type="text/javascript" th:src="@{../js/fnSetFilteringEnterPress.js}"></script-->
<script>
$( document ).ready(function() {
	$('#paginatedTable').DataTable( {
        "processing": true,
       // "serverSide": true,
        "pageLength": 5,
        "ajax": {
            "url": "/NotesService/notes",
            "dataSrc": ""  //https://datatables.net/manual/ajax
	          },
        "columns": [
                    { "data": "id", "name" : "ID", "title" : "ID"  },
                    { "data": "title", "name" : "Title" , "title" : "Title"},
                    { "data": "description", "name" : "Description" , "title" : "Description"},
                    { "data": "category", "name" : "Category" , "title" : "Category"},
                    { "data": "subCategory", "name" : "SubCategory" , "title" : "SubCategory"},
                    { "data": "dateAdded", "name" : "DateAdded" , "title" : "DateAdded"},
                    { "data": "dueDate", "name" : "DueDate" , "title" : "DueDate"},
                    { "data": "priority", "name" : "Priority" , "title" : "Priority"},
                    { "data": "userAuthor", "name" : "UserAuthor" , "title" : "UserAuthor"},
                    { "data": "assigned", "name" : "Assigned" , "title" : "Assigned"},
                    { "data": "status", "name" : "Status" , "title" : "Status"},
                    { "data": "comments", "name" : "Comments" , "title" : "Comments"}
                ]    
	});
	
	$('#paginatedTable').dataTable().fnSetFilteringDelay();
});

</script>
</head>
<body>
<h1>The List of notes are below :- </h1>
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Notes List</a>
        </div>
        
      </div>
    </nav>
 
    <div class="container">
 
      <div class="starter-template">
<div class="table-responsive">
<table id="paginatedTable" class="table table-striped">
<thead>
<tr>
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
</thead>
</table>
</div></div></div>
</body>
</html>