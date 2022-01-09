
var c ;
$(document).ready(function(){
$('.commander').click(function(){
    c = ($(this).attr('id'));
    localStorage.setItem('c',c);
})
    

})


var d ;
$(document).ready(function(){
$('.commanderacc').click(function(){
    d = ($(this).attr('id'));
    localStorage.setItem('d',d);
})
    

})




