<%@page contentType="text/html" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hubbub &raquo; Login</title>
        <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    </head>
    <body>
        <div id="hd">
            <img src="images/headerlogo.png" alt="logo"/>
        </div>
        <div id="bd">
            <h1>Log In to Your Hubbub Account</h1>
            <h2 class="flash">${flash}</h2>
            <form method="POST" action="eindex">
                <input type="hidden" name="action" value="login"/>
                <table>
                    <tr>
                        <td><label class="formElement" for="username">User Name:</label></td>
                        <td><input class="formElement" type="text" name="username"/></td>
                    </tr>
                    <tr>
                        <td><label class="formElement" for="password">Password:</label></td>
                        <td><input class="formElement" type="password" name="password"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input class="formElement" type="submit" valu="Log me in"/></td>
                    </tr>
                </table>
            </form>
            <a href="eindex?action=join">I need to join Hubbub</a>.
            <a href="eindex?action=timeline">Show me the Timeline</a>.
        </div>
        <%@include file="footer.jspf"%>
    </body>
</html>
