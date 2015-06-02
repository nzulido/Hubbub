<%@page contentType="text/html" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hubbub &raquo; Post</title>
        <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    </head>
    <body>
        <div id="hd">
            <img src="images/headerlogo.png" alt="logo"/>
        </div>
        <div id="bd">
            <h1>What are you hackin' on, ${sessionScope.user.username}?</h1>
            <h2 class="flash">${flash}</h2>
            <form method="POST" action="eindex">
                <textarea name="content" rows="3" cols="80" placeholder="Say something" required></textarea>
                <input type="hidden" name="action" value="post"/>
                <input type="submit" value="Post it!"/>
            </form>
            <a class="nav" href="eindex?action=timeline">Back to the timeline</a>
        </div>
        <%@include file="footer.jspf"%>
    </body>
</html>
