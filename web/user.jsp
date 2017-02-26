<%--
  Created by IntelliJ IDEA.
  User: sudip sarker
  Date: 2/26/2017
  Time: 7:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <link type="text/css"
          href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
    <title>Add new user</title>
</head>
<body>
<script>
    $(function() {
        $('input[name=dob]').datepicker();
    });
</script>

<form method="POST" action='UserController' name="frmAddUser">
    <input type="hidden" readonly="readonly" name="userid" value="<c:out value="${user.id}" />" /> <br />
    First Name :
    <input type="text" name="firstName" value="<c:out value="${user.firstName}" />" /> <br />
    Last Name :
    <input type="text" name="lastName" value="<c:out value="${user.lastName}" />" /> <br />
    Address:
    <input type="text" name="address" value="<c:out value="${user.address}" />" /> <br />
    Email :
    <input type="text" name="email" value="<c:out value="${user.email}" />" /> <br />
    Phone Number :
    <input type="text" name="phone" value="<c:out value="${user.phone}" />" /> <br />
    Date of Birth :
    <input type="text" name="dob" value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />" /> <br />

    <input type="submit" value="Submit" />
</form>
</body>
</html>