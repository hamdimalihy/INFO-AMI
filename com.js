function Verif() 
{
    var Login = document.getElementById('TLogin');
    var Passwd = document.getElementById('TPasswd');
    var msg = '';
    if (Login.value.length < 4) 
    {
        msg = msg + '\n - Login';
        ChangeBackColor(Login, col1);
    }
    if (Passwd.value.length < 7) 
    {
        msg = msg + '\n - Mot de passe';
        ChangeBackColor(Passwd, col1);
    }
    if (msg.length > 0) 
    {
        msg = 'Veuillez saisir correctement le(s) champ(s) suivant(s) : \n' + msg;
        alert(msg);
        return;
    }
    document.getElementById('LoginForm').submit();
}