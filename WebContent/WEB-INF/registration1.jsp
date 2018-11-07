<html>
  <head>
    <title>reCAPTCHA demo: Simple page</title>
     
     <script type="text/javascript">
     
     var RecaptchaOptions = {
        theme : 'custom',
        custom_theme_widget: 'recaptcha_widget'
     };
     
    </script>
  </head>
  <body>
    <form action="?" method="POST">
      				<div id="recaptcha_widget" style="display:none">

   <div id="recaptcha_image"></div>
   <div class="recaptcha_only_if_incorrect_sol" style="color:red">Incorrect please try again</div>

   <span class="recaptcha_only_if_image">Enter the words above:</span>
   <span class="recaptcha_only_if_audio">Enter the numbers you hear:</span>

   <input type="text" id="recaptcha_response_field" name="recaptcha_response_field" />

   <div><a href="javascript:Recaptcha.reload()">Get another CAPTCHA</a></div>
   <div class="recaptcha_only_if_image"><a href="javascript:Recaptcha.switch_type('audio')">Get an audio CAPTCHA</a></div>
   <div class="recaptcha_only_if_audio"><a href="javascript:Recaptcha.switch_type('image')">Get an image CAPTCHA</a></div>

   <div><a href="javascript:Recaptcha.showhelp()">Help</a></div>

 </div>

 <script type="text/javascript"
    src="http://www.google.com/recaptcha/api/challenge?k=6Lcwwz0UAAAAAA1wbp-1taXsFpCUk1Loeg-4iMx6">
 </script>
 <noscript>
   <iframe src="http://www.google.com/recaptcha/api/noscript?k=6Lcwwz0UAAAAAA1wbp-1taXsFpCUk1Loeg-4iMx6"
        height="300" width="500" frameborder="0"></iframe><br>
   <textarea name="recaptcha_challenge_field" rows="3" cols="40">
   </textarea>
   <input type="hidden" name="recaptcha_response_field"
        value="manual_challenge">
 </noscript>
    </form>
  </body>
</html>