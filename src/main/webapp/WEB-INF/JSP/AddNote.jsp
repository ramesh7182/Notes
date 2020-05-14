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
<form method="post" action="/addNoteAction">
  <div class="form-group row">
    <label for="title" class="col-sm-2 col-form-label">Title</label>
    <input type="label" class="form-control" id="title" name="title" placeholder="Title">
    <div class="col-sm-10">
    </div>
  </div>
  <br>
  <div class="form-group row">
    <label for="description" class="col-sm-2 col-form-label">Description</label>
    <input type="description" class="form-control" id="description"  name="description" placeholder="Description">
    <div class="col-sm-10">
    </div>
  </div>
    <div class="form-group row">
    <label for="category" class="col-sm-2 col-form-label">Category</label>
     <select id="category" name="category">
  		<option value="Home">Home</option>
  		<option value="Office">Office</option>
  		<option value="Travel">Travel</option>
  		<option value="Personal">Personal</option>
	</select>
    <div class="col-sm-10">
    </div>
  </div>
    <div class="form-group row">
    <label for="subcategory" class="col-sm-2 col-form-label">Sub Category</label>
     <select id="subcategory" name="subcategory">
  		<option value="Grocery">Grocery</option>
  		<option value="Veg">Veg</option>
  		<option value="Non Veg">Non Veg</option>
  		<option value="Stationary">Stationary</option>
  		<option value="Cooking">Cooking</option>
	</select>
    <div class="col-sm-10">
    </div>
  </div>
    <div class="form-group row">
    <label for="dateadded" class="col-sm-2 col-form-label">Date Added</label>
    <input type="date" class="form-control" id="dateadded"  name="dateadded">
    <div class="col-sm-10">
    </div>
  </div>
    <div class="form-group row">
    <label for="duedate" class="col-sm-2 col-form-label">Due Date</label>
    <input type="date" class="form-control" id="duedate" name="duedate" >
    <div class="col-sm-10">
    </div>
  </div>
      <div class="form-group row">
    <label for="priority" class="col-sm-2 col-form-label">Priority</label>
     <select id="priority" name="priority">
  		<option value="Blocker">Blocker</option>
  		<option value="Critical">Critical</option>
  		<option value="High">High</option>
  		<option value="Normal">Normal</option>
  		<option value="Low">Low</option>
	</select>
    <div class="col-sm-10">
    </div>
  </div>
     <div class="form-group row">
    <label for="author" class="col-sm-2 col-form-label">Author</label>
    <select id="author" name="author">
  		<option value="Ramesh">Ramesh</option>
  		<option value="Manali">Manali</option>
  		<option value="Prateek">Prateek</option>
  		<option value="Rupesh">Rupesh</option>
  		<option value="Neha">Neha</option>
  		<option value="Vivaan">Vivaan</option>
	</select>
    <div class="col-sm-10">
    </div>
  </div>
     <div class="form-group row">
    <label for="assignedTo" class="col-sm-2 col-form-label">Assigned To</label>
    <select id="assignedTo" name="assignedTo">
  		<option value="Ramesh">Ramesh</option>
  		<option value="Manali">Manali</option>
  		<option value="Prateek">Prateek</option>
  		<option value="Rupesh">Rupesh</option>
  		<option value="Neha">Neha</option>
  		<option value="Vivaan">Vivaan</option>
	</select>
    <div class="col-sm-10">
    </div>
  </div>
  <div class="form-group row">
    <label for="status" class="col-sm-2 col-form-label">Status</label>
     <select id="status" name="status">
  		<option value="New">New</option>
  		<option value="In Progress">In Progress</option>
  		<option value="Completed">Completed</option>
  		<option value="Reopen">Reopen</option>
  		<option value="Defer">Defer</option>
  		<option value="Not Required">Not Required</option>
	</select>
    <div class="col-sm-10">
    </div>
  </div>
  <div class="form-group row">
    <label for="comments" class="col-sm-2 col-form-label">Comments</label>
    <textarea type="comments" class="form-control" id="comments" name="comments" placeholder="Enter your detail here .."> </textarea>
    <div class="col-sm-10">
      
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
      <input type="submit" class="form-control" id="submit" value = "Submit">
    </div>
  </div>
</form>
</body>
</html>