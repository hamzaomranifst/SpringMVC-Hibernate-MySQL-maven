<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
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
    <body >
        <div class="wrapper">
            <!-- Navbar-->
            <div class="content-wrapper">
                <div class="page-title">
                    <div>
                        <h1>Employee List</h1>
                    </div>
                    <div>
                        <a href="newEmployee" class="btn btn-info btn-flat"><i class="fa fa-lg fa-plus"></i>Add Employee</a>
                    </div>
                </div>
                <div class="row">
                    <div>
                        <div class="card">
                            <div class="card-body">
                                <table class="table table-hover table-bordered" id="sampleTable">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Address</th>
                                            <th>Telephone</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="employee" items="${listEmployee}">
                                            <tr>
                                                <td>${employee.name}</td>
                                                <td>${employee.email}</td>
                                                <td>${employee.address}</td>
                                                <td>${employee.telephone}</td>
                                                <td><a class="btn btn-warning col-xs-12" href="editEmployee?id=${employee.id}"/> <span class="glyphicon glyphicon-edit"></span>Edit</a></td>
                                                <td><a class="btn btn-danger col-xs-12" href="deleteEmployee?id=${employee.id}"/><span class="glyphicon glyphicon-trash"></span>Delete</a></td>
                                            </tr>
                                        </c:forEach>                                         
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Javascripts-->
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
