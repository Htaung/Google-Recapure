<html>
  <head>
    <title>reCAPTCHA demo: Explicit render for multiple widgets</title>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    
    <script type="text/javascript">
    
    	var RecaptchaOptions = {
            theme : 'white'
        };
    	
	    function newPatronSubmit(){
	    	var response = grecaptcha.getResponse();
	    	if(response.length == 0){
	    		 document.getElementById('err_captcha').innerHTML = "Please Verify If you are human";
	    	}else{
	    		document.getElementsByName('googleResponse').value = response;
	    	}
	    }
    
     
    </script>
  </head>
  <body>
    <form method="post" action="validate.jsp"
		id="newPatronForm" onsubmit="return newPatronSubmit();"
      <div class="g-recaptcha" data-sitekey="6Lcwwz0UAAAAAA1wbp-1taXsFpCUk1Loeg-4iMx6"></div>
      <br/>
      <p class="errormsg" id="err_captcha"></p>
      <input type="hidden" value="" name="googleResponse"/>
      <input type="submit" value="Submit"/>
    </form>
    
  </body>
</html>