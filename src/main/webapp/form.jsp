<%-- 
    Document   : form
    Created on : 5 бер. 2021, 15:31:47
    Author     : danik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <title>Insert form</title>
        
        <style>
        body,h1 {font-family: "Raleway", sans-serif}
        body, html {height: 100%}
        .bgimg {
            color: black;
            background-image: url("https://static01.nyt.com/images/2018/09/18/science/18spacex-2/18spacex-2-facebookJumbo.jpg");
            min-height: 100%;
            background-position: center;
            background-size: cover;
        }
        input {
            transition-duration: 0.7s;
            background-color: #555555;
            color: white;
            border: 2px solid #555555;
        }

        input:hover {
            background-color: white;
            color: #555555;
            border: 2px solid white;
        }
</style>
    </head>
    <body>
        <div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
            <div class="w3-display-middle">
        <h1 class="w3-jumbo w3-animate-top">Insert data(Поехали!)</h1>
                <hr class="w3-border-grey" style="margin:auto;width:40%">
                <div class="w3-large w3-center">
        <form action="<%=request.getContextPath()%>/" method="post">
            <input type="hidden" name="id" value="0"/>
            <p>Name:
                <input type="text" name="name"/></p>
            <p>Age:
                <input  type="text" placeholder="integer" maxlength="9" name="age"/></p>

                <input type="submit" name="create data"/>
        </form>
            </div>
        </div>
    </body>
</html>
