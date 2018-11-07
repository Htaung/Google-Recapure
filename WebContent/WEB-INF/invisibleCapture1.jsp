<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
  function onSubmit(token) {
    alert('thanks ' + document.getElementById('field').value);
  }

  function validate(event) {
    event.preventDefault();
    if (!document.getElementById('field').value) {
      alert("You must add text to the required field");
    } else {
      grecaptcha.execute();
    }
  }

  function onload() {
    var element = document.getElementById('submit');
    element.onclick = validate;
  }
</script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>
<body>
   <form>
     Name: (required) <input id="field" name="field">
     <div id='recaptcha' class="g-recaptcha"
          data-sitekey="6Ld6ZEEUAAAAAPvNHTiJV8oZXyL93MgAERiFADA-"
          data-callback="onSubmit"
          data-size="invisible"></div>
     <button id='submit'>submit</button>
   </form>
<script>onload();</script>
</body>
</html>