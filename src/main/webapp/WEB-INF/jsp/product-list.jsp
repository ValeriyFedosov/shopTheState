<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <link>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .dives{
            color: red;
        }
    </style>

</head>
<body>
m

<form:form modelAttribute="searchForm">
    <div class="container">
        <div class="col-xs-6">
        <form:input path="searchText" rendered="false" placeholder="Filter"/>
        </div>
    <div class="col-sm-4"/>
    <input type="submit" value="Search" class="btn btn-success"/>
    </div>
</form:form>



<div class="container">
    <c:forEach items="${products}" var="prod">
        <div class="col-sm-5">
            <div class="panel panel-primary">
                <div class="panel-heading">Product</div>
                <div class="panel-body">
                    <h3>${prod.title} ( ${prod.balance} )</h3>
                    <p>${prod.description}</p>
                    <a href="/product/${prod.id}">Edit</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<div class="dives">
    <a href="/product">New product</a>
</div>




</body>
</html>
