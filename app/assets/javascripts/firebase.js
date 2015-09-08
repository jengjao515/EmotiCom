$(document).on("page:change", function() {
  var ref = new Firebase("https://vivid-inferno-3459.firebaseio.com");
 
  $(function() {
	   $("#twitterLogin").click(function(){
		  // authWithOAuthRedirect
		  ref.authWithOAuthPopup("twitter", function(error, authData) {
  		  if (error) {
    		  console.log("Login Failed!", error);
  		  } else {
    		  console.log("Authenticated successfully with payload:", authData);
          // console.log(authData['provider']);
          // console.log(authData['uid']);
          // console.log(authData['twitter']['profileImageURL']);
          // console.log(authData['twitter']['cachedUserProfile']['location']);
          // console.log(authData['twitter']['username']);
          // console.log(authData['twitter']['displayName']);
          saveUserInfo(authData);
  		  }
  	 });
	 });
  });
    var saveUserInfo = function(userInfo){
    var response = $.post('/users', userInfo)
    response.done(function(response){
      location.href = "/"
    })
    response.fail(function(error, xhr, status){
      console.log(error, xhr, status)
    })
  };
});

