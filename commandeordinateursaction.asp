<%
    Response.CodePage = 65001 
	Response.CharSet = "UTF-8"
    Dim Req ,Con ,nom ,prenom ,adresse ,idproduit ,Quantite

    nom = Request.Form("Nom")
    prenom = Request.Form("Prenom")
    adresse = Request.Form("Adresse")
    quantite = int(Request.Form("Quantite"))
    idproduit = int(Request.Form("IdProduit"))

    
    Req = "ps_ajouter_commande '" & nom & "','" & prenom & "', '" & adresse & "','" & idproduit & "', '" & quantite & "'"

	Set Con = Server.CreateObject("ADODB.Connection")	
	Con.Open Application("PC")

    On Error Resume Next
    Con.Execute Req

    Con.Close()
    Set Con = Nothing

    If(Err.number <> 0) Then
        Response.write(Err.Description)

    Else
%>
    <div class="commandeclient">
            <h1 style="width:100%;border:2px solid #333333;border-collapse:separate;border-spacing:0;border-radius:14px;background:#FFFFFF;text-align:center;">Commande bien enregistr&eacutee</h1>
    </div>
<%
    End If
%>

