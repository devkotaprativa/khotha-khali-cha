$(document).ready(function(){	
	$(".side-bar").hide(); 
	$(".join-slide").hide();       
});   
    

$(document).ready(function(){	
  $(".btn-earn").click(function(event){
		event.preventDefault();
    $(".side-bar").toggle(700);
    $('html, body').animate({
        scrollTop: $(".focus-on-click").offset().top
    }, 2000);
  });    
});

$(document).ready(function(){	
  $(".join-us").click(function(event){
		event.preventDefault();
    $(".join-slide").toggle(700);
    $('html, body').animate({
        scrollTop: $(".join-focus").offset().top
    }, 2000);
  });    
});


	