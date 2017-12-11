<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>

<html>
<head>
	  <title>Spring Boot - Angularjs Example</title>
	  <meta charset="utf-8" />
	  
	  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
	  <script src="/js/controller.js"></script>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	  
</head>
<body>

<div class="container" ng-app="app">

	<h3 style="color:blue">Http Angularjs With SpringBoot Example</h3>
	
	<div ng-controller="postcontroller">
		<form class="form-horizontal" name="customerForm" ng-submit="submitForm()">
			<div class="form-group">
				<label class="control-label col-sm-2" for="firstnameID">FirstName:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="firstname" id="firstnameID"
						placeholder="Enter FirstName" ng-model="firstname"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="lastnameID">LastName:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="lastname" id="lastnameID"
						placeholder="Enter LastName" ng-model="lastname"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>
		</form>

		<div class="col-sm-offset-2 col-sm-10">
			<p>{{postResultMessage}}</p>
		</div>
	</div>
	
	<div class="col-sm-offset-2 col-sm-10" ng-controller="getcontroller">
		<button id="btn-id" type="button" class="btn btn-primary" ng-click="getfunction()">Get All Customers</button>
		<ul>
        	<li ng-repeat="cust in response">{{cust.id + " "+cust.firstname + " " + cust.lastname}} <a href='#' ng-click="deletefunction()">Delete</a></li>
    	</ul>
	</div>
	
</div>
</body>
</html>