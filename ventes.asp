<%
	Response.CodePage = 65001 
	Response.CharSet = "UTF-8"
%>


<!DOCTYPE html>
<html>
<head>
	<title>Default_Page</title>
	<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<style>
		
		header{
				margin-top: 60px;
				width: 100%;
				height: 50px;
			}
			h4{
				text-align: center;
				color: blue;
				text-decoration:underline;
			}
			.menu ul li,.menugauche ul li {			
				list-style: none;
			}
			.menu ul{
				display: flex;
				margin-left: 450px;
			}
			.menugauche{
				float: left;
				background-color: #F4F6F6 ;
				height: 1000px;
				margin-left: 240px;
			}
			.reparation,.client{
				width: 800px;
				height: 400px;
				border: 2px solid black;
			}
			.reparation{
				display: flex;
				justify-content: space-between;
			}
		
			p:hover{
				color: darkviolet;
			}
			.conteneurprincipale{
				background-color: #7d80807a;
			}
			.conteneur{
				background-color: white;
				margin-left: 600px;
				margin-right: 400px;
				width: 800px;
				height: 1000px;
			}
			.footer{
				color: white;
				text-align: center;
			}
			button{
				border:none;
				height: 30px;
				background-color: white;
			}
			button:hover{
				background-color: #3498DB ;
				border: none;
			}
			.deb{
				float: left;
				margin-left: 100px;
				font-weight: bolder;
				font-size: 40px;
			}
			.bont{
				
				color: black;
			}
		
			table,th,td{
				border:1px solid black;
			}
			table{
				width: 800px;
			}
			th,td{
				text-align: center;
			}
			.ord{
				float: left;
			}
			.repa{
				float: right;
				width:272px;
				height:185px;
			}
			label{
				display: block;
				text-align: center;
			}
			.para{
				text-align: center;
			}
			.text{
				float:right;
			}
			.form{
				display: flex;
				justify-content: center;
				border:1px solid black;
				background-color: pink;
				margin: 50px auto;
				width: 50%;
			}
			.attribute{
				float: left;
				padding-left:30px;
			}
				

	</style>
</head>

<body>
	<header>
			<div class="deb">[ INFO-AMI SARL ]</div>
			<br>
			<div class="menu">
				<nav>
					<ul>
						<li><button><a class="bont" href="index.asp">Accueil</a></button></li>&nbsp;|&nbsp;
						<li><button><a class="bont" href="reparation.asp">Réparation/Installation/Cablage informatique</a></button>&nbsp;|&nbsp;
						<li><button><a class="bont" href="ventes.asp">Vente matériels informatiques</a></button>&nbsp;|&nbsp;
						<li><button><a class="bont" href="contact.asp">Contactez nous</a></button></li>
					</ul>
				</nav>
			</div>
		</header>
		<br><br><br>
		<div class="conteneurprincipale">
			<br><br><br><br>
			<div class="menugauche">
				<br><br><br>
				<nav>
					<ul>
						<li><a href="index.asp">Accueil</a></li>
						<br>
						<li><a href="reparation.asp">Réparation/Installation/Cablage informatique</a></li>
						<br>
						<li><a href="ventes.asp">Vente matériels informatiques</a></li>
						<br>
						<li><a href="contact.asp">Contactez nous</a></li>
					</ul>
				</nav>
			</div>
			<div class="conteneur">
				<br>
				<h4>Ventes</h4>
				<br>
				<div class="reparation">
					
					
						<div>
						<br><br><br>
						<a href="ordinateurs.asp"><img class="ord" src="images/ordi.jpg"></a>
						<label><Strong class="mot">Ordinateurs</Strong></label>
						</div>
						<div>
						<br><br><br>
						<a href="accessoires.asp"><img class="repa" src="images/materiel.jpg" ></a>
						<label><Strong class="mot">Matériels Informatiques</Strong></label>
						</div>
					
					
				</div>
				<div class="client">
					<h4>Espace Clients</h4>
					<br>
					<p class="para">Vous pouvez laisser un commentaire sur votre commande</p>
					
					<form method = "POST" action = "commentaireaction.asp">
						
						<div class="form">

							<div class="attribute">
								<label for="Prenom">Prénom:</label>
								<label for="Nom">Nom:</label>
								<label for="Adresse">Adresse:</label>
								<label for="Telephone">Télephone:</label>
								<label for="Commentaire">Votre commentaire!</label>
							</div>
							<div>
								<input id="Prenom" type="text" name ="Prenom">
								<br>
								<input  id="Nom" type="text" name="Nom">
								<br>
								<input id="Adresse" type="text" name="Adresse">
								<br>
								<input type="tel" id="phone" name="phone" PlaceHolder="06-02-98-56-04" pattern="[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}">
								<textarea id="Commentaire" name="Commentaire"></textarea>
								<br>
								<button class="btn btn-danger" type="submit" >Envoyer</button>
							</div>
						</div>
					</form>
					

				</div>
			</div>	
			<br>
			<div class="footer">2020-Copyright-Toutes reproductions interdites.
			</div>
		
		
</body>
</html>