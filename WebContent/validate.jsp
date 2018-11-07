 <%@ page import="net.tanesha.recaptcha.ReCaptchaImpl" %>
    <%@ page import="net.tanesha.recaptcha.ReCaptchaResponse" %>

    <html>
      <body>

		<%
		String user_name=(String)request.getParameter("user_name");
		
		%>

		<h1>User Name is : <%=user_name %> </h1>
		



      <%
        String remoteAddr = request.getRemoteAddr();
        ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
        reCaptcha.setPrivateKey("6Lcwwz0UAAAAAJswWrsA5b0zaU2abmuShPEtUyPQ");

        String challenge = request.getParameter("recaptcha_challenge_field");
        String uresponse = request.getParameter("recaptcha_response_field");
        
        //String challenge = request.getParameter("recaptcha_challenge_field");
        //String uresponse = request.getParameter("recaptcha-token");
        //String uresponse = request.getParameter("g-recaptcha-response");
        ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(remoteAddr, challenge, uresponse);

        if (reCaptchaResponse.isValid()) {
          out.print("Answer was entered correctly!");
        } else {
          out.print("Answer is wrong");
        }
      %>
      </body>
    </html>