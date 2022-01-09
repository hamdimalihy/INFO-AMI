<%
	Response.CodePage = 65001 
	Response.CharSet = "UTF-8" 
%>

<html lang="fr">
	<head>
		<title>Info-Ami - Admin - Message</title>
		<meta charset="UTF-8">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" href="../css/style.css" type="text/css">
		<link href="../../CSS/bootstrap.min.css" rel="stylesheet"  type="text/css">
		<script src="../../JS/bootstrap.bundle.min.js"></script>
		 <link rel="stylesheet" href="../css/style.css" type="text/css">
    <link href="../../CSS/bootstrap.min.css" rel="stylesheet"  type="text/css">
    <link href="../../CSS/navbar.css" rel="stylesheet"  type="text/css">
    <link rel="stylesheet" href="../../css/style.css" type="text/css">
    <script src="../../JS/jquery-3.5.1.slim.min.js"></script>
    <script src="../../JS/bootstrap.bundle.min.js"></script>
	</head>
	<body>
		
		
			<div class="jumbotron">
				<table align="center" border="0" cellspacing="0" cellpadding="0" style="width:100%;border:2px solid #333333;border-collapse:separate;border-spacing:0;border-radius:14px;background:#FFFFFF;">
					<tr style="height:200px;">
						<td align="center" valign="center"  Id="TdMsg" style="padding:10px;color:red;font-size:13px;text-align:center;font-weight:bold;"><%=Session("Msg")%><%Session("Msg")=""%></td>
					</tr>
				<table>
			</div>
		</main>
	</body>
</html>