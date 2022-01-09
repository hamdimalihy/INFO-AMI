<!DOCTYPE html>

	<html>
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width,initial-scale=1">
			<link rel="stylesheet" href="style.css">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<script src="jquery.js"></script>
			<script src="script.js"></script>
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
			<title>FORMULE</title>
			<style type="text/css">
				.main{
					background-color: rgb(0 123 255 / 25%);
					width: 800px;
					margin: auto
					padding:10px 0px 10px 0px;
					margin: auto;
					text-align : center;
				}
				label{
					color: white
				}
				form{
					padding: 10px
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
		<body id="b">
			<form method="POST" action ="commandeaccessoiresaction.asp" >
				<div class="main">

				<p>
					</br>
					</br>
					<h1> Bienvenue Cher Client !</h1>
					</br>
					</br>

					<label for ="Nom">Entrer votre nom :</label>
					
				</p>
				<p><input type="text" name="Nom" id="Nom" required="required"></p>
				<P>
					<label  for = "Prénom" > Entrez votre prénom :</label>
					
				</P>
				<p><input type="text" name="Prenom" id ="Prenom" required="required"></p>
				<p>
					<label for ="Adresse">Entrez votre Adresse :</label>
					
				</p>
				<p><input type="text" name="Adresse" id ="Adresse" required="required"></p>
				
				<p>
					<label for ="Quantite">Quantité :</label>
					
				</p>
				<input id="hidden" name="IdProduit" type = "text" class='d-none'>
				<p><input type="number" name="Quantite" id ="Quantite" required="required" min=1></p>
					<button class="btn btn-primary" type="submit" >Envoyer</button>
			
				</div>
			</form>
			<script>
				
					$(document).ready(function(){
						
						$('#hidden').val(localStorage.getItem('d'))
						
						})
			</script>
		</body>
	</html>