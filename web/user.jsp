<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
    <head>
    <title>Login Screen</title>
    <link rel="icon" href="img/HumberFavicon.png" type="image/jpg" sizes="128x128">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">

    </head>
    <body>
        <div id="divContainer">
            <h1>Login</h1>
            <div id="divLogin">
                <form action="Login" method="post">
                    <div style="width:auto; height:auto; float:left;">
                        Username <br>
                        Password 
                    </div>
                    <div style="width:auto; height:auto; float:left;">
                        <input type="text" name="username" value=""><br>
                        <input type="password" name="password" value=""><br><br>
                        <input style="float:left;" type="submit" value="Login"><br><br>
                        <a href="" style="text-align:left; float:left;">Forgot Password?</a>
                    </div>
                </form>
            </div>
        </div>
        <footer><h5 style="color:black; float:right;">&copy;1738</h5></footer>
    </body>
</html>