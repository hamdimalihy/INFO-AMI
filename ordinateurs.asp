<%
	Response.CodePage = 65001 
	Response.CharSet = "UTF-8"
%>

<!DOCTYPE html>
<html>
	<head>
			<title>ordinateurs :</title>
			<meta charset="utf-8">
			<link rel="stylesheet" href="style.css">
      		<meta name="viewport" content="width=device-width,initial-scale=1">
    		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<script src="jquery.js"></script>
			<script src="script.js"></script>
      		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
			<style type="text/css">
			table{
     				border-collapse: collapse;
	  				width: 70%;
	  				background-color: white;
	  				margin:5px
			}
			th, td {
						text-align: left;
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
			body{
						background-size: cover;
						background-attachment: fixed;
						background: #E0EAFC;  /* fallback for old browsers */
						background: -webkit-linear-gradient(to right, #CFDEF3, #E0EAFC);  /* Chrome 10-25, Safari 5.1-6 */
						background: linear-gradient(to right, #CFDEF3, #E0EAFC);
			}
			</style>
	</head>

	<body>
			<br><br><br>
	<h1>Espace Ordinateurs :</h1>
	<br><br><br>
				<table style="width:100%">
 				 <tr>
    					<th>Desciption</th>
						<th>Etat</th>
    					<th>Prix</th>
						<th>Image</th>
              			<th>Commander</th>

 				 </tr>
				 <%
					Dim con,Req
					Req = "ps_afficher_ordinateurs"
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
						<td style="text-align:center"><img width="200" height="200"  src="images/<%=Rs("Image")%>"></td>
						<td style="text-align:center"><a class="commander" id="<%=Rs("IdProduit")%>" href="commandeordinateursForm.asp">Cliquez ici pour commander</a></td>
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
				</table>
				
	</body>
	</html>