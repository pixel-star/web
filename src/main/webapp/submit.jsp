
<%@page import="org.obrii.mit.dp2021.kulbachinskiy.myproject.Dama"%>
<%@page import="org.obrii.mit.dp2021.kulbachinskiy.myproject.MyInterface"%>
<%@page import="org.obrii.mit.dp2021.kulbachinskiy.myproject.Application"%>
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
        p {

        }
    </style>
    <body>

        <div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
            <div class="w3-display-topleft w3-padding-large w3-xlarge">

            </div>
            <div class="w3-display-middle">
                <h1>Submited data:</h1>
                <% Application dat = (Application) request.getAttribute("data");
                MyInterface data = dat.getDama();
                %>
                <p>Name: <%=data.getName()%></p>
                <p>Gender: <%=data.getGender()%></p>
                <p>Languages: <%=data.getLanguage()%></p>
                <p>Country: <%=data.getCountry()%></p>
                <p>Elected:<%=data.getIsLove()%></p>


                <form action = "<%=request.getContextPath()%>">
                    <input type="submit" value="Return to main page"/>
                </form>

                <div class="w3-display-bottomleft w3-padding-large">
                </div>
            </div>
    </body>
</html>
