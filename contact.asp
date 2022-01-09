
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<link rel="stylesheet" href="style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style type="text/css">
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
			.telephone,.mail,.réseaux{
				width: 800px;
				border: 2px solid black;
				height: 200px;
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
			.space{
				text-align: center;
			}
			.fa {
				  padding: 20px;
				  font-size: 30px;
				  width: 50px;
				  text-align: center;
				  text-decoration: underline;
				  margin: 5px 2px;
				  
			}
			.fa:hover{
			    opacity: 0.7;
			}
			.fa-facebook{
				  background: #3B5998;
				  color: white;
				  border-radius: 30%;
			}
			.fa-linkedin{
				  background: #007bb5;
				  color: white;
				  border-radius: 30%;
			}
			.rés{
				display: flex;
				justify-content: space-around;
			}
			.bont{
				text-decoration: none;
				color: black;
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
						<li><button><a class="bont" href="reparation.asp">Réparation/Installation/Cablage informatique</a></button></li>&nbsp;|&nbsp;
						<li><button><a class="bont" href="ventes.asp">Vente matériels informatiques</a></button></li>&nbsp;|&nbsp;
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
				<br><br><br>
				<div class="telephone">
					<h4>Contact téléphonique</h4>
					<p class="space">Pour toutes questions ,vous pouvez nous contacter sur les numéros suivants.</p>
					<p class="space"><strong>Tél 1 :</strong> 05 22 90 69 54.<br><strong>Tél 2 :</strong> 06 73 28 78 50.</p>
				</div>
				<hr>
				<br>
				<div class="mail">
					<h4>Contact par mail</h4>
					<p class="space">Si vous voulez nous contacter par mail ,veuillez utiliser le mail suivant.</p>
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:hamdimalihy2017@gmail.com">Mail INFO-AMI.</a>
				</div>
				<hr>
				<br>
				<div class="réseaux">
					<br>
					<h4>Nos Profils sur les réseaux sociaux</h4>
					<br>
					<div class="rés">
						<a href="" class="fa fa-facebook"></a>
						<a href="" class="fa fa-linkedin"></a>
					</div>
				</div>
			</div>
			<br>
			
			<div class="footer">2020-Copyright-Toutes reproductions interdites.
			</div>
			
		<footer>
			
		</footer>
</body>
</html>