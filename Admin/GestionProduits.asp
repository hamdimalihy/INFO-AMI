<%
	Response.CodePage = 65001 
	Response.CharSet = "UTF-8"
	IF(len(Session("IdAdmin"))=0)Then
		Session("msg")="Veuillez vous authentifier afin d'utiliser la plateforme"
		Response.Redirect "Message.Asp"
	End IF

%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <title>Document</title>
    <style>
           body{
						background-size: cover;
						background-attachment: fixed;
						background: linear-gradient(to right, #CFDEF3, #E0EAFC);
			}
            table{
                border-collapse: collapse;
                width: 70%;
                background-color: white;
                margin:5px
			}
			th, td {
						text-align: center;
						padding: 8px;
						border: 1px #5E5E5E solid;
						font-family: calibri;
			}
			h1{
							
						text-decoration: underline;
						text-align: center;
			}
			th{
						background-color: yellow;
			}
			form{
				display:inline;
			}
    </style>
	<script>

	</script>
</head>
<body>
<br><br><br> 
<h1>Gestion des Produits:</h1>
<br><br><br>
<table style="width:100%">
 				 <tr>
    					<th>Desciption</th>
						<th>Etat</th>
    					<th>Prix</th>
						<th>Image</th>
              			<th>Actions</th>

 				 </tr>
				 <tbody id="tbody" >
				 <%
					Dim con,Req
					Req = "ps_show_all_product"
					Set Con = Server.CreateObject("ADODB.Connection")
					Con.CursorLocation = 3
					Con.Open Application("PC")

					On Error Resume Next

					Set Rs = Server.CreateObject("ADODB.RecordSet")
					Rs.Open Req, Con, 3, 3
					 While Not RS.EOF
				%>
				
				<tr>
						<td style="text-align:center"><%=Rs("Designation")%></td>
						<td style="text-align:center"><%=Rs("Etat")%></td>
						<td style="text-align:center"><%=Rs("Prix")%></td>
						<td style="text-align:center"><img width="200" height="200"  src="../images/<%=Rs("Image")%>"></td>
						<td style="text-align:center"><button type="button" class="btn btn-primary">Modifier</button>&nbsp;&nbsp;&nbsp;<button id="<%=Rs("IdProduit")%>"  name="test"  value="<%=Rs("IdProduit")%>"  class="btn btn-danger supprimer" onclick="javascript:supprimer(<%=Rs("IdProduit")%>);">Supprimer</button></td>
			   </tr>
				<%
					Rs.MoveNext
					WEnd
					rs.Close()
					Set rs = Nothing
					Con.Close()
					Set Con = Nothing
					If(Err.number <> 0) Then
						Response.Write Err.Description
					End If
				%>
				</tbody>
				</table>
<script src="../jquery.js"></script>
			
<script>

function supprimer(id){

							var fichier = "SupprimerProduit.asp?Id="+id;
							var xmlhttp ;

							if (window.XMLHttpRequest) {
								xmlhttp = new XMLHttpRequest();
							}
							else {
								xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
							}
							xmlhttp.onreadystatechange = function () {
								if ((xmlhttp.readyState == 4) && (xmlhttp.status == 200)) {
									document.getElementById('tbody').innerHTML = xmlhttp.responseText;
								}
							}

							xmlhttp.open('GET', fichier, true);
							xmlhttp.send();
}


</script>	

</body>
</html>
