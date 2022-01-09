<%
	Response.CodePage = 65001 
	Response.CharSet = "UTF-8"

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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title>Commande-Page</title>
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
						
						padding: 8px;
						border: 1px #5E5E5E solid;
						font-family: calibri;
						text-align:center;
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
<h1>Gestion des Commentaires:</h1>
<br><br><br>
<table style="width:100%">
 				 <tr>
    					<th>NomClient</th>
						<th>PrénomClient</th>
    					<th>Adresse</th>
						<th>Telephone</th>
                        <th>Commentaire</th>

 				 </tr>
                  <%
                        Dim Req ,Con 
                        Req = "ps_afficher_commentaire"
                        Set Con = Server.CreateObject("ADODB.Connection")
					    Con.CursorLocation = 3
					    Con.Open Application("PC")

					    On Error Resume Next

					    Set Rs = Server.CreateObject("ADODB.RecordSet")
					    Rs.Open Req, Con, 3, 3
					    While Not RS.EOF
				%>
				<tr>
						<td style="text-align:center"><%=Rs("NomClient")%></td>
						<td style="text-align:center"><%=Rs("PrenomClient")%></td>
						<td style="text-align:center"><%=Rs("Adresse")%></td>
                        <td style="text-align:center"><%=Rs("Telephone")%></td>
                        <td style="text-align:center"><%=Rs("Commentaire")%></td>

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
<html>



