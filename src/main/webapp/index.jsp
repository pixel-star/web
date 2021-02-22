

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>landing page</title>
    </head>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
body {  display: flex;
    flex-direction: column;}
.bgimg {
  background-image: url('d.jpg');
  min-height: 100%;
  background-position: center;
  background-size: cover;
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

</style>
    <body>
        
<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
  <div class="w3-display-topleft w3-padding-large w3-xlarge">

  </div>
  <div class="w3-display-middle">
    <h1 class="w3-jumbo w3-animate-top">find yourself in the big world (laba2)</h1>
    <hr class="w3-border-grey" style="margin:auto;width:40%">
    <form action="${pageContext.request.contextPath}/form" method="get">
            <input type="submit" value="Call form"/>
        </form>
  </div>
            
  <div class="w3-display-bottomleft w3-padding-large">
  </div>
    
</div>
        
    </body>
</html>
