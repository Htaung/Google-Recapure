<html>
  <head>
    <title>reCAPTCHA demo: Simple page</title>
     
     <script type="text/javascript">
        var RecaptchaOptions = {
            theme : 'white'
        };
    </script>
  </head>
  <body>
    <form action="?" method="POST">
      				<script type="text/javascript"
							src="https://www.google.com/recaptcha/api/challenge?k=6Lcwwz0UAAAAAA1wbp-1taXsFpCUk1Loeg-4iMx6"></script>
						<noscript>
							<iframe
								src="https://www.google.com/recaptcha/api/noscript?k=6Lcwwz0UAAAAAA1wbp-1taXsFpCUk1Loeg-4iMx6"
								height="300" width="500" frameborder="0"></iframe>
							<br>
							<textarea name="recaptcha_challenge_field" rows="3" cols="40">
	                     </textarea>
							<input type="hidden" name="recaptcha_response_field"
								id="recaptcha_response_field" value="manual_challenge">
						</noscript>
						<p class="errormsg" id="err_captcha"></p>
    </form>
  </body>
</html>