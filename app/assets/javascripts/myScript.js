$(document).ready(function(){	
	$(".side-bar").hide();        
});   
    

$(document).ready(function(){	
  $(".btn-earn").click(function(event){
		event.preventDefault();
    $(".side-bar").toggle(700);
  });    
});