<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
      var verifyCallback = function(response) {
        alert(response);
      };
      var widgetId1;
      var widgetId2;
      var onloadCallback = function() {
        // Renders the HTML element with id 'example1' as a reCAPTCHA widget.
        // The id of the reCAPTCHA widget is assigned to 'widgetId1'.
        widgetId1 = grecaptcha.render('example1', {
          'sitekey' : '6Lcwwz0UAAAAAA1wbp-1taXsFpCUk1Loeg-4iMx6',
          'theme' : 'light'
        });
        widgetId2 = grecaptcha.render(document.getElementById('example2'), {
          'sitekey' : '6Lcwwz0UAAAAAA1wbp-1taXsFpCUk1Loeg-4iMx6'
        });
        grecaptcha.render('example3', {
          'sitekey' : '6Lcwwz0UAAAAAA1wbp-1taXsFpCUk1Loeg-4iMx6',
          'callback' : verifyCallback,
          'theme' : 'dark'
        });
      };
    </script>
  </head>
  <body>
    <!-- The g-recaptcha-response string displays in an alert message upon submit. -->
    <form action="javascript:alert(grecaptcha.getResponse(widgetId1));">
      <div id="example1"></div>
      <br>
      <input type="submit" value="getResponse">
    </form>
    <br>
    <!-- Resets reCAPTCHA widgetId2 upon submit. -->
    <form action="javascript:grecaptcha.reset(widgetId2);">
      <div id="example2"></div>
      <br>
      <input type="submit" value="reset">
    </form>
    <br>
    <!-- POSTs back to the page's URL upon submit with a g-recaptcha-response POST parameter. -->
    <form action="?" method="POST">
      <div id="example3"></div>
      <br>
      <input type="submit" value="Submit">
    </form>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
        async defer>
    </script>
  </body>
</html>