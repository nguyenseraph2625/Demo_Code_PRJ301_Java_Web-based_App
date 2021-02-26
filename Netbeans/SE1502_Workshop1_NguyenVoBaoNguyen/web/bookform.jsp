<%@page import="BookManagement.Books"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- --%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new Book Page</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            label {
                font-weight: bold;
                color: crimson;
            }
        </style>
    </head>
    <body>
        <%
            Books p = (Books) request.getAttribute("pObject");
            String headerMsg = (String) request.getAttribute("msg");
            String action = (String) request.getAttribute("action");
        %>

        <h2><%= headerMsg%> </h2>

        <table width="600px" border="0px solid">
            <form action="BookandUserManagementServlet?action=<%=action%>" method="POST" name="f1">
                <input type="hidden" name ="action" value="">
                <tr> 
                    <td><label>Book ID:</label></td>
                    <td><input type="text" name="id" value="" class="w3-input" required/></td>
                </tr>
                <tr> 
                    <td><label>Name:</label></td>
                    <td><input type="text" name="name" value="" class="w3-input" required/></td>
                </tr>
                <tr>
                    <td><label>Author:</label></td>
                    <td><input type="text" name="author" value="" class="w3-input"></td>
                </tr>
                <tr>
                    <td> <label>Publish Year:</label></td>
                    <td><input type="year" name="PY" value="" class="w3-input"/></td>

                </tr>
                <tr>
                    <td> <label>Description:</label></td>
                    <td><textarea name="description" class="w3-input"></textarea></td>
                </tr>

                <tr>
                    <td> <label>Status:</label></td>
                    <td>
                        <select name="sta"  class="form-control">
                            <option value="Available">Available</option>
                            <option value="Not Available">Not Available</option>
                        </select>
                    </td> 
                </tr>
                <tr>
                    <td> <label>Category ID:</label></td>
                    <td><input type="text" name="catID" value=""  class="w3-input"/></td>
                </tr>
                <tr> 
                    <td colspan="2" align="center">
                        <input type="submit" value="Submit" class="btn btn-success"/>
                        <input type="reset" value="Reset" class="btn btn-warning"/>
                    </td> 
                </tr>

            </form>
        </table>
        <br> <br>
        <label >birthday : <span>*</span></label>
        <SELECT id ="year" name = "yyyy" onchange="change_year(this)">
        </SELECT>
        <script>
            $(document).ready(function () {
                var d = new Date();
                var option = '<option value="year">year</option>';
                selectedYear = "year";
                for (var i = 1930; i <= d.getFullYear(); i++) {// years start i
                    option += '<option value="' + i + '">' + i + '</option>';
                }
                $('#year').append(option);
                $('#year').val(selectedYear);
            });
        </script>
    </select>
    <a href="BookandUserManagementServlet" class="btn btn-primary"> List of books </a>

</body>
</html>
