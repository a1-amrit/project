<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Products</title>
		<style type="text/css">
			h2 {
				font-family: consolas;
			}
			table.dataTable {
				border-collapse: collapse;
				font-family: consolas;
				font-size: 18px;
			}
			table.dataTable tr:nth-child(even) {
				background-color: RGB(232, 248, 255);
			}
			table.dataTable tr:nth-child(odd) {
				background-color: RGB(225, 255, 225);
			}
			table.dataTable tr td {
				padding: 8px;
			}
			table.dataTable tr th {
				padding: 12px 8px;
				background-color: RGB(255, 155, 155);
			}
		</style>
	</head>
	<body>
		<h2>Products</h2>
		<table border="1" class="dataTable">
			<tr>
				<th>Product No</th>
				<th>Product Name</th>
			</tr>
			<c:forEach items="${products}" var="product">
				<tr>
					<td>${product.productNo}</td>
					<td>${product.productName}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>