<%-- 
    Document   : home
    Created on : 5 бер. 2021, 15:20:14
    Author     : danik
--%>

<%@page import="java.util.List"%>
<%@page import="org.obrii.mit.dp2021.kulbachinskiy.kulba.data.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <title>home page</title>

    </head>
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

        .table_col {
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
            font-size: 14px;
            width: 660px;

            text-align: left;
            border-collapse: collapse;

        }
        .table_col th:first-child, .table_col td:first-child {

            border-left: none;
        }
        .table_col th {
            font-weight: normal;
            border-bottom: 2px ;
            border-right: 20px ;
            border-left: 20px ;
            padding: 8px 10px;
        }
        .table_col td {
            border-right: 20px ;
            border-left: 20px ;
            padding: 12px 10px;
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
    <body>
        <div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
            <div class="w3-display-middle">
                <h1 class="w3-jumbo w3-animate-top">Let's go find new world</h1>
                <hr class="w3-border-grey" style="margin:auto;width:40%">
                <div class="w3-large w3-center">

                    <%List<Data> dataList = (List<Data>) request.getAttribute("data");%>
                    <table class="table_col">

                        <tr>
                            <th>id</th>
                            <th>name</th>
                            <th>age</th>
                            <th>update</th>
                            <th>delete</th>
                        </tr>
                        <%for (Data data : dataList) {%>
                        <tr>
                            <td><%=data.getId()%></td>
                            <td><%=data.getName()%></td>
                            <td><%=data.getAge()%></td>
                            <td>
                                <form action="form_update.jsp" method="post">
                                    <input type="hidden" name="id" value="<%=data.getId()%>"/>
                                    <input type="hidden" name="name" value="<%=data.getName()%>"/>
                                    <input type="hidden" name="age" value="<%=data.getAge()%>"/>
                                    <input type="submit" value="Update"/>
                                </form>
                            </td>
                            <td>
                                <form action="<%=request.getContextPath()%>/form" method="get">
                                    <input type="hidden" name="id" value="<%=data.getId()%>"/>
                                    <input type="submit" value="Delete"/>
                                </form>

                            </td>
                        </tr>
                        <%}%>



                    </table>

                    <form action="form.jsp">
                        <input type="submit" value="Add data"/>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
