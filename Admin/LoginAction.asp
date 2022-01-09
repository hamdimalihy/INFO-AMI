<%
    Dim IdAdmin ,Req ,Con ,Login ,Mp
    Login = Request.Form("TLogin")
    Mp = Request.Form("TPasswd")

    
    Req = "ps_verifier_compte'" & Login & "','" & Mp & "'"

	Set Con = Server.CreateObject("ADODB.Connection")	
	Con.Open Application("PC")

    Set rs = Server.CreateObject("ADODB.RecordSet")
	Rs.Open Req, Con, 3, 3

    If(Rs.RecordCount = 1) Then
            Session("IdAdmin") = Rs("IdAdmin")
            Session("Login")  = Rs("Login")
            Session("MP") = Rs("MP")
            Session("Msg") = "Bienvenue sur l'espace Syndic"
            Session("PageTitle") = "Login/Logout"
            Rs.Close()
            Set Rs = Nothing
            Con.Close()
            Set Con = Nothing
            Response.Redirect "Accueil.asp"

    Elseif(Rs.RecordCount = 0) Then
		Session("Msg") = "Admin non trouv&eacute, V&eacuterifiez votre login et/ou votre mot de passe"
		Response.Redirect "Message.asp"
    Else
		Session("Msg") = "Plusieurs Syndics ont le meme login !!!, prière de contactez le super administrateur."			
    End If
	
	Rs.Close()
	Set Rs = Nothing
	Con.Close()
	Set Con = Nothing

	If (Err.number <> 0) Then
		msg = "Pour des raisons techniques, l'activation de votre compte n'a pas eu lieu."
		msg = msg & "<br><br>Raison Technique : " & Err.Description
    	Session("Msg") = msg
    End If
    Session("IdSyndic") = ""
    Session("Email") = ""
    Session("MP") = ""
    
%>