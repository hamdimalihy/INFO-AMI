<%
        If(Len(Session("IdAdmin")) = 0 ) Then
                Session("msg") = "Votre session est expir&eacute;e veuillez vous authentifier ! "
                response.redirect "Message.asp"
        End If
%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
        <title>Document</title>
        <style>
                body{
                        background-image:url('../images/admine.jpg');
                        background-size:cover;
                        
                        background-repeat:no-repeat;
                        
                }
                .container-fluid{
                        margin-left:30%;
                }
        </style>
</head>
<body>
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
         <li class="nav-item dropdown">
          <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fab fa-product-hunt"></i>
            &nbsp;&nbsp;Gestion des Produits &nbsp;
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="GestionProduits.asp">Afficher Produits</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="AjouterProduitForm.asp">Ajouter Produit</a></li>
           
           
          </ul>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="GestionCommandes.asp">&nbsp;&nbsp;<i class="fas fa-copyright"></i>&nbsp;&nbsp;Gestion des Commandes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="commentaire.asp">&nbsp;&nbsp;<i class="fas fa-comments"></i>&nbsp;&nbsp;Gestion des Commentaires</a>
        </li>
          <li class="nav-item dropdown">
          <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-sign-out-alt"></i>
            &nbsp;&nbsp;Logout &nbsp;
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="Logout.asp">Se Deconnecter</a></li>           
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

</body>
       
</html>