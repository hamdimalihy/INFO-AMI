        <%
				If(len(Session("IdAdmin"))=0) Then
						Session("msg")="Veuillez vous authentifier afin d'utiliser la plateforme "
						Response.Redirect "Message.Asp"
				End IF
                Dim Req1 ,Con1 ,id 
                id = Request.QueryString("id")
                 
                Req1 = "ps_supprimer_produit '" & id & "'"
                Set Con1 = Server.CreateObject("ADODB.Connection")	
                Con1.Open Application("PC")

                On Error Resume Next
                Con1.Execute Req1

                Con1.Close()
                Set Con1 = Nothing
							
							
    %>
   
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
