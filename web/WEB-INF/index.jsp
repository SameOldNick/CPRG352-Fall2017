<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Week 3 Lab 1</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="/css/bootstrap.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Simple JSP Calculator</h1>
                    
                    <form class="form-inline" action="/Calculator" method="post">
                        <div class="form-group">
                          <label for="first">First</label>
                          <input type="number" class="form-control" name="first" id="first">
                        </div>
                        <div class="form-group">
                          <label for="second">Second</label>
                          <input type="number" class="form-control" name="second" id="second">
                        </div>
                        <input type="submit" name="operation" value="+" class="btn btn-default">
                        <input type="submit" name="operation" value="-" class="btn btn-default">
                        <input type="submit" name="operation" value="*" class="btn btn-default">
                        <input type="submit" name="operation" value="%" class="btn btn-default">
                    </form>
                </div>
            </div>
            
            <c:if test="${result != null}">
                <div class="row" style="margin-top: 10px">
                    <div class="col-md-12">
                        <p class="lead">Result: <input type="number" value="${result}" readonly></p>
                    </div>
                </div>
            </c:if>
        </div>
    </body>
</html>
