requirejs.config({
    baseUrl: 'themes/foundation/foundation/javascripts'
});

requirejs(['modernizr.foundation','foundation.min','jquery.foundation.forms','responsive-tables','jquery.offcanvas'],function(){
    requirejs(['app']);    
    
     
    /*--------------------------------
    * theme adaptation - strat
    --------------------------------*/    
    /* home slider fix */
    if($('#featured')){
        $("#featured").orbit({
            directionalNav:true,
            bullets :true
        });
    }
    /* cart popin fix */
    var cartPopin = $('#cart_block_content');
    $('footer').append(cartPopin.clone());
    cartPopin.remove();
    /* search popin fix */
    var searchModal = $('#searchModal');
    $('footer').append(searchModal.clone());
    searchModal.remove();
    /* top menu fix */
    $("#mainMenu > li:not(.divider)").each(function(){
        if($(this).find('ul').html()){
            $(this).addClass('has-dropdown');
            $(this).find('ul').addClass('dropdown');
        }
        $(this).after('<li class="divider"/>')
    }); 
    
    $('.breadcrumbs li:last').addClass('current').wrapInner('<span/>');
/*--------------------------------
    * theme adaptation - end
    --------------------------------*/
});


