
/*
*  Github Manager
*  Used to manage Async JS Google API and handle JS events
*
*/  

/**
 * Import misc functions
 */
$.getScript("assets/js/misc.js");

var logginWindow;

$( function(){
   $("#githubloggin").on('click',function(e){
       e.preventDefault();
       OpenClickDialog() ;
   }); 
});

function OpenClickDialog() {
    
    changeTextStatus( 'Please loggin to download your resource. ' ); 
    
    logginWindow = WindowPopup(
        "handlers/github_handler.php?id="+postId,
        "Github Signup", 
        1000, 500
    );
    
    console.log("open");
    
    // logginWindow.onload = function(){
        
    //     console.log("load");
        
    //     var url = logginWindow.document.body.textContent;
        
    //     logginWindow.close();
        
    //     console.log(url);
            
        
    //     if( url != null ){
            
    //         console.log("downloading");        
            
    //         window.location = url;
    //         changeTextStatus( ' Your download will start shortly. ' );   
    //     }
    //     else{
            
    //         changeTextStatus( 'User cancelled login or did not fully authorize.' );
    //     }
    // }
             
}



