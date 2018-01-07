
/*
*  Google Manager
*  Used to manage Async JS Google API and handle JS events
*
*/

/**
 * Import misc functions
 */
$.getScript("assets/js/misc.js");


/**
 * Main Listener 
 */
 
$(function(){
    initClient();
});


/**
 * The Sign-In client object.
 */
var auth2;

/**
 * Initializes the Sign-In client.
 */
var initClient = function() {
    gapi.load('auth2', function(){
        /**
         * Retrieve the singleton for the GoogleAuth library and set up the
         * client.
         */
        auth2 = gapi.auth2.init({
            client_id: '571948139738-ispo0jqltsahvpc9choj3dloh24i2r0c.apps.googleusercontent.com',
            cookiepolicy: 'single_host_origin',
            scope: 'profile email'
        });

        // Attach the click handler to the sign-in button
        auth2.attachClickHandler( 'googleloggin', {}, onSuccess, onFailure);
    });
};

/**
 * Handle successful sign-ins.
 */
var onSuccess = function( user ) {
    
    changeTextStatus( ' Your download will start shortly. ' ); 
    
    var data = {
        name : user.getBasicProfile().getName(),
        email : user.getBasicProfile().getEmail() 
    };
    
    checkDownloadResource( "../lightbox/handlers/google_handler.php" , data ); 
};

/**
 * Handle sign-in failures.
 */
var onFailure = function( error ) {
   changeTextStatus( 'User cancelled login or did not fully authorize.' );
};