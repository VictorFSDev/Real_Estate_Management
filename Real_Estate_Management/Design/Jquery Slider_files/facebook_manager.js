
/*
*  Facebook Manager
*  Used to manage Async JS Facebook SDK and handle JS events
*
*/

/**
 * Import misc functions
 */
$.getScript("assets/js/misc.js");


/**
 * Main Listener 
 */
 
$(function (){
    $('#facebookloggin').on('click', function(e) {     
        e.preventDefault();
        
        changeTextStatus( 'Please loggin to download your resource. ' );
        
        checkLoginState();
    })
});


/**
 * Charge Async Facebook JS SDK and init client
 */

window.fbAsyncInit = function() {
    FB.init({
        appId      : '337298523017064',
        cookie     : true,   
        xfbml      : true,  
        version    : 'v2.5' 
    });

};

(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));



/*
*   Check status depeding user state 
*
*/

function checkLoginState () {
    
    
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            changeTextStatus( ' Your download will start shortly. ' );  
            checkDownloadResource( "../lightbox/handlers/facebook_handler.php" );
        }
        else if (response.status === 'not_authorized') {
            
            $('#fb-result').html( 'Please log ' + 'into this app.' );
        }
        else {
            FB.login( function( response ) {           
                if ( response.authResponse) {
                    
                    changeTextStatus( ' Your download will start shortly. ' );
                    checkDownloadResource( "../lightbox/handlers/facebook_handler.php" );           
                } 
                else {
                    changeTextStatus( 'User cancelled login or did not fully authorize.' );
                }
            }, {scope : 'public_profile, email'});  
        }
    });  
}
