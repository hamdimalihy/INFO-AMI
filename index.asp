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
					.reparation,.installation,.cablage{
						width: 800px;
						border: 2px solid black;
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

				<div class="reparation">
					<br><br><br>
					<h4>Qui nous sommes ?</h4>
					<br>
					<p>
						Nous sommes une Société à responsabilité limitée ,notre activité est :Vente de matériels et consommables informatiques,formation, maintenance et réseaux informatiques,câblage informatique, électrique et téléphonique, caméra de surveillance. 
					</p>
				</div>
				<br>
				<hr>
				<br>
				<br>
				<div>
					<h4>Horaire de travail</h4>
					<br>
				<table>
					<th colspan="2">Du lundi Au Vendredi</th>
					<tr>
						<td>Matin</td>
						<td>Après Midi</td>
					</tr>
					<tr>
						<td>9 à 12:30</td>
						<td>13:30 à 16:00</td>
					</tr>
					<th colspan="2">Samedi</th>
					<tr>
						<td width="50%">Matin</td>
						<td width="50%">9 à 12:30</td>
						
					</tr>
				</table>
			</div>
			</div>
			<br>
			<div class="footer">2020-Copyright-Toutes reproductions interdites.
			</div>
		</div>
		
</body>
</html>