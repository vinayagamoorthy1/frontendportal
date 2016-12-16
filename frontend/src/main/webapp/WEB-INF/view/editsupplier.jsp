<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2>Edit Supplier</h2>
<c:set value="${selectedsupplierrow }" var="supplier"></c:set>

<form:form action="../editSupplier" method="post">
	<table>
		<tr>
			<td>Supplier ID:</td>
			<td><input type="text" name="id" value="${supplier.id} " readonly="true"></td>
		</tr>
		<tr>
			<td>Supplier Name:</td>
			<td><input type="text" name="name" value="${supplier.name}"></td>
		</tr>
		<tr>
			<td>Supplier Phoneno:</td>
			<td><input type="text" name=phoneno value="${supplier.phoneno}"></td>
		</tr>
		<tr>
			<td>Supplier description:</td>
			<td><input type="text" name="description" value="${supplier.description}"></td>
		</tr>
		<tr>
			<td>Supplier Address:</td>
			<td><input type="text" name="address" value="${supplier.address}"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="Add">
			<td><input type="reset" value="Reset">
		</tr>

	</table>

</form:form>