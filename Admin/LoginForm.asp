<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../style.css" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../com.js"></script>
    <style>
            
h1{
    margin-top:80px;
    color:#d0d00e;
    text-align: center;
    text-decoration: underline;
    
}
    </style>
</head>
<body> 
      <h1>Bienvenue dans l'Espace Administrateur</h1>
      <div class="jumbotron">
                
                <center>
                    <b class="Titre_2">Page de Connexion</b><br><br>
                </center>

				<form name="LoginForm" id="LoginForm" action="LoginAction.asp" method="post">
					<table align="center" border="0" cellspacing="0" cellpadding="0" style="width:360px;font-weight:bold;" id="TabForm">
						<tr style="height:10px; font-size:1px">
							<td align="center" valign="center" style="width:130px;"></td>
							<td align="center" valign="center" style="width:10px;"></td>
							<td align="center" valign="center" style="width:220px;"></td>
						</tr>
                        <tr height="25">
							<td align="right" valign="center">Login *</td>
							<td align="center" valign="center">:</td>
							<td align="left" valign="center"><input type="text" name="TLogin" id="TLogin" maxlength="30" style="width:210px;" onclick="javascript:ChangeBackColor(this, col2);" onkeyup="javascript:Connexion(1);"></td>
						</tr>
						 <tr style="height:10px; font-size:1px">
                            <td align="center" valign="center" colspan="3">&nbsp;</td>
                        </tr>
                        <tr height="25">
							<td align="right" valign="center">Mot de passe *</td>
							<td align="center" valign="center">:</td>
							<td align="left" valign="center"><input type="password" name="TPasswd" id="TPasswd" maxlength="30" style="width:210px;" onclick="javascript:ChangeBackColor(this, col2);" onkeyup="javascript:Connexion(2);"></td>
						</tr>
						 <tr style="height:10px; font-size:1px">
                            <td align="center" valign="center" colspan="3">&nbsp;</td>
                        </tr>
                        
						<tr style="height:60px; font-size:1px">
                            <td align="center" valign="bottom" colspan="3"><button name="BTValider" id="BTValider" type="submit" class="btn btn-outline-primary" value="Se Connecter"  alt="Se Connecter" title="Se Connecter">Se Connecter</button></td>
                        </tr>
                        <tr style="height:10px; font-size:1px">
                            <td align="center" valign="center" colspan="3">&nbsp;</td>
                        </tr>
					</table>
				</form>
        </div>

</body>
</html>