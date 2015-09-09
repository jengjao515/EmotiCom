var ouathLogin = function() {
  var ref = new Firebase("https://vivid-inferno-3459.firebaseio.com");
	$("#twitterLogin").click(function(){
		ref.authWithOAuthPopup("twitter", function(error, authData) {
  		if (error) {
    		console.log("Login Failed!", error);
  		} else {
    		// console.log("Authenticated successfully with payload:", authData);
        console.log("You have successfully logged in with Twitter!")
        sendInfo(authData);
  		}
  	});
	});
};

var sendInfo = function(userInfo){
  var response = $.post('/users', userInfo);
  response.done(function(response){
    location.href = "/"
  });
  response.fail(function(error, xhr, status){
      console.log(error, xhr, status)
  });
};

