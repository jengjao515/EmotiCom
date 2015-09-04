var myFirebaseRef = new Firebase("https://vivid-inferno-3459.firebaseio.com/");

var ref = new Firebase("https://vivid-inferno-3459.firebaseio.com");
ref.authWithOAuthPopup("twitter", function(error, authData) {
  if (error) {
    console.log("Login Failed!", error);
  } else {
    console.log("Authenticated successfully with payload:", authData);
  }
});