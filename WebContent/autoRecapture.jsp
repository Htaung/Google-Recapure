<html>
  <head>
    <title>reCAPTCHA demo: Simple page</title>
     <script src="https://www.google.com/recaptcha/api.js" async defer></script>
     
     <script>
     function verifyGResponse(response){
    	 if(response && response.length){
    	 	console.log("verify response" + grecaptcha.getResponse());
    	 	console.log("verify response" + response );
    	 }
     }
     </script>
  </head>
  <body>
    <form action="?" method="POST">
      <div class="g-recaptcha" data-sitekey="6Lcwwz0UAAAAAA1wbp-1taXsFpCUk1Loeg-4iMx6" data-theme="dark" data-callback="verifyGResponse" ></div>
      <br/>
      <input type="submit" value="Submit">
    </form>
  </body>
</html>