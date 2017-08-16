<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsee.css">
<!--<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>-->

<title>Notification</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<!-- ASIDE NAV AND CONTENT -->
	<div class="line">
		<div class="box  margin-bottom">
			<div class="margin">
				<jsp:include page="leftMenu.jsp" />
				<!-- CONTENT -->
				<section class="s-12 l-6">
				<h1>Content</h1>

				<table id="example" class="display" cellspacing="0" width="100%">
					<tbody>
						<tr>
							<th>Thông báo nghỉ học </th>
							<th>Hôm nay thầy bận đi chấm thi..</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th>tjtdddddddddddddddddđlej;l</th>
							<th>ssvv</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th>tjtlej;l</th>
							<th>ssvv</th>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th>tjtlej;l</th>
							<th>ssvv</th>
						</tr>
					</tbody>
				</table>
				</section>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		var editor; // use a global for the submit and return data rendering in the examples

		$(document).ready(function() {
			editor = new $.fn.dataTable.Editor({
				ajax : "../php/staff.php",
				table : "#example",
				template : '#customForm',
				fields : [ {
					label : "First name:",
					name : "first_name"
				}, {
					label : "Last name:",
					name : "last_name"
				}, {
					label : "Position:",
					name : "position"
				}, {
					label : "Office:",
					name : "office"
				}, {
					label : "Extension:",
					name : "extn"
				}, {
					label : "Start date:",
					name : "start_date",
					type : "datetime"
				}, {
					label : "Salary:",
					name : "salary"
				} ]
			});

			$('#example').DataTable({
				dom : "Bfrtip",
				ajax : "../php/staff.php",
				columns : [ {
					data : null,
					render : function(data, type, row) {
						// Combine the first and last names into a single table field
						return data.first_name + ' ' + data.last_name;
					}
				}, {
					data : "position"
				}, {
					data : "office"
				}, {
					data : "extn"
				}, {
					data : "start_date"
				}, {
					data : "salary",
					render : $.fn.dataTable.render.number(',', '.', 0, '$')
				} ],
				select : true,
				buttons : [ {
					extend : "create",
					editor : editor
				}, {
					extend : "edit",
					editor : editor
				}, {
					extend : "remove",
					editor : editor
				} ]
			});
		});
	</script>
</body>
</html>