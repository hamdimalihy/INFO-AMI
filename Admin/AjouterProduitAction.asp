<%
    Response.CodePage = 65001 
	Response.CharSet = "UTF-8"

    Dim Req ,Con ,designation ,etat ,prix ,img ,test
    designation = Request.Form("Designation")
    etat = Request.Form("Etat")
    prix = Request.Form("Prix")
    test=Request.Form("choix")
    img = Request.Form("Image")

    
    Req = "ps_ajouter_produit '" & designation & "','" & etat & "', '" & prix & "','" & test & "', '" & img & "'"

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
    <html>
    <head>
    <link rel="stylesheet" href="../style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <style>
                .commandeclient{
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
                .test{
                  margin-top:90px;
                  margin-left:400px;
                }
    </style>
    </head>
    <body>
      <div class="btn-group test">
        <a href="Accueil.asp" class="btn btn-primary" aria-current="page">Accueil Page!</a>&nbsp;&nbsp;&nbsp;
        <a href="AjouterProduitForm.asp" class="btn btn-outline-primary">Revenir au Formulaire Pour rajouter de nouveaux produits</a>&nbsp;&nbsp;&nbsp;
        <a href="GestionProduits.asp" class="btn btn-primary">Afficher Produits </a>
   </div>
    <hr>
    <br><br>
    <div class="commandeclient">
            <h1>Produit ajout&eacutee avec succ&egrave;s</h1>
    </div>
   
 
    </body>
    </html>
<%
    End IF
%>
