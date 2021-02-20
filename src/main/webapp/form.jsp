

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <%
                if (request.getParameter("title") == null) {
                    out.print("Data Processing");
                } else {
                    out.print(request.getParameter("title"));
                }
            %>
        </title>
    </head>
    
        <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('d.jpg');
  min-height: 100%;
  background-position: center;
  background-size: cover;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
.w3-text-white, .w3-hover-text-white:hover {
     color: black!important; 
}
</style>
    
    <body>
        <div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
  <div class="w3-display-topleft w3-padding-large w3-xlarge">

  </div>
  <div class="w3-display-middle">


        <form action="${pageContext.request.contextPath}/form" method="post">
            <input type="hidden" name="title" value="Submited"/>

            <label for="fname">First Name</label>
            <input type="text" id="fname" name="name" placeholder="Your name..">

            
            Gender:
            <input type="radio" name="gender" value="male"/>Male
            <input type="radio" name="gender" value="female"/>Female <br>

            Languages:
            <input type="checkbox" name="language" value="English"/>English
            <input type="checkbox" name="language" value="Ukraine"/>Ukraine
            <input type="checkbox" name="language" value="Japan"/>Japan
            <input type="checkbox" name="language" value="French"/>French <br>

            <label for="country">Country</label>
    <select id="country" name="country">
      <option value="australia">Australia</option>
      <option value="canada">Canada</option>
      <option value="usa">USA</option>
    </select>

            <input type="submit" value="Submit">
     
        </form>

  <div class="w3-display-bottomleft w3-padding-large">
  </div>
</div>
    </body>
</html>