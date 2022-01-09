<%
	Response.CodePage = 65001 
	Response.CharSet = "UTF-8"
	IF(len(Session("IdAdmin"))=0)Then
		Session("msg")="Veuillez vous authentifier afin d'utiliser la plateforme"
		Response.Redirect "Message.Asp"
	End IF

%>

<!DOCTYPE html>

	<html>
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width,initial-scale=1">
			<link rel="stylesheet" href="style.css">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<script src="../script.js"></script>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
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
				
				.label-file {
							cursor: pointer;
							color: #00b1ca;
							font-weight: bold;
						}
				.label-file:hover{
							color: #25a5c4;
				}

						
			</style>
		</head>
		<body id="b">
			
			<form method="POST" action ="AjouterProduitAction.asp" >
				<div class="main">

				<p>
					</br>
					</br>
					<h1> Ajouter des Produits !</h1>
					</br>
					</br>

					<label for ="Designation" class="label-file">Designation:</label>
					
				</p>
				<p><input type="text" name="Designation" id="Designation" required="required"></p>
				<P>
					<label  for = "Etat" class="label-file" > Etat :</label>
					
				</P>
				<p><input type="text" name="Etat" id ="Etat" required="required"></p>
				<p>
					<label for ="Prix" class="label-file">Prix :</label>
					
				</p>
                    <p><input type="text" name="Prix" id ="Prix" required="required" PlaceHolder="prix.exact"></p>
                <p>
					<label for ="choix" class="label-file">Type :</label>
					
				</p>
					<select name="choix" id="choix">
							<option id="ordinateur" value="ordinateur">Ordinateur</option>
							<option id="materiel" value="autre">Autre Matériel Informatiques</option>
					</select>
				<br><br>
				<p>
					<label for="file" class="label-file">Choisir une image</label>		
				</p>
                    <p><input id="file" type="file"  name="Image" style="display:none" required="required"></p>
                    <button class="btn btn-primary"  type="submit" >Envoyer</button>
				
				</div>
			</form>

			
		</body>
	</html>
		