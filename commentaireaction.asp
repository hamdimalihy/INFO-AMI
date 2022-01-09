<%
    Dim prenom ,nom ,adresse ,telephone ,commentaire ,Req ,Con 
    prenom = Request.Form("Prenom")
    nom  = Request.Form("Nom")
    adresse = Request.Form("Adresse")
    telephone = Request.Form("phone")
    commentaire = Request.Form("Commentaire") 

    Req = "ps_ajouter_commentaire_client '" & nom & "','" & prenom & "', '" & adresse & "','" & telephone & "','" & commentaire & "'"

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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
<style>
 .commandeclient{
                                margin-top:100px;
                                width:100%;
                                height:200px;
                                
                                background-color:aqua;
                                border:2px solid #333333;
                                border-collapse:separate;
                                border-spacing:0;
                                border-radius:14px;
                                
                                text-align:center;
                                }
                h1{
                        text-align:center;
                }
              
</style>
 
    
    <br><br>
<div class="commandeclient">
            <h1>Commentaire bien enregistr&eacute </h1>
            <h1>nous allons traiter votre demande dans les plus brefs d&eacute;lais</h1>
</div>
<%
End IF
%>