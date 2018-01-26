<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- CSS-->
            <link rel="stylesheet" type="text/css" href="resources/css/main.css">
            <!-- Font-icon css-->
            <link rel="stylesheet" type="text/css" href="resources/font-awesome/css/font-awesome.min.css">
            <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
            <!--if lt IE 9
            script(src='https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')
            script(src='https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')
            -->
            <title>Employee Management Screen</title>
    
    </head>

    <body>
        
        <div class="content-wrapper">
                
                <div class="row" style="text-align:center;">
                    
                    <div style="margin-left: auto; margin-right: auto; width:70%;">

                        <div class="card">
                            <div class="page-title">
                                <div></div>
                                <div>
                                    <a href="/" class="btn btn-info btn-flat">Employee List</a>
                                </div>
                            </div>
                            <h3 class="card-title">Add-Edit Employee</h3>
                            <div class="card-body">
                                <form:form action="saveEmployee" method="post" modelAttribute="employee">
                                    <form:hidden path="id"/>
                                    <div class="form-group">
                                        <label class="control-label">Name</label>
                                        <spring:bind path="name">
                                            <div>
                                                <form:input type="text" path="name"  placeholder="Name" autofocus="true" class="form-control"></form:input>
                                                <form:errors path="name" class="text-danger"></form:errors>
                                            </div>
                                        </spring:bind>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label">Email</label>
                                        <spring:bind path="email">
                                            <div>
                                                <form:input type="text" path="email"  placeholder="Email" autofocus="true" class="form-control"></form:input>
                                                <form:errors path="email"  class="text-danger"></form:errors>
                                            </div>
                                        </spring:bind>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label">Address</label>
                                        <spring:bind path="address">
                                            <div>
                                                <form:input type="text" path="address"  placeholder="Address" autofocus="true" class="form-control"></form:input>
                                                <form:errors path="address" class="text-danger"></form:errors>
                                            </div>
                                        </spring:bind>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label">Telephone</label>
                                        <spring:bind path="telephone">
                                            <div>
                                                <form:input type="text" path="telephone"  placeholder="Telephone" autofocus="true" class="form-control"></form:input>
                                                <form:errors path="telephone" class="text-danger"></form:errors>
                                            </div>
                                        </spring:bind>
                                    </div>
                                
                                    <div class="card-footer">
                                        <button class="btn btn-primary icon-btn" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Save</button>
                                    </div>
                                </form:form>
                            </div>
                        </div>

                    </div>
                </div>
        </div>


        <script src="resources/js/jquery-2.1.4.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/plugins/pace.min.js"></script>
        <script src="resources/js/main.js"></script>
        <script src="resources/js/custom.js"></script>

        <!-- Data table plugin--> 
        <script type="text/javascript" src="resources/js/plugins/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="resources/js/plugins/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript">$('#sampleTable').DataTable();</script>
    </body>
</html>