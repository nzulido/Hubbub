<%@page contentType="text/html" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hubbub &raquo; Upload</title>
        <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    </head>
    <body>
        <div id="hd">
            <img src="images/headerlogo.png" alt="logo"/>
        </div>
        <div id="bd">
            <h1>Upload a profile pic, ${sessionScope.user.username}!</h1>
            <h2 class="flash">${flash}</h2>
            <form method="POST" action="eindex" enctype="multipart/form-data">
                <input type="hidden" name="action" value="upload"/>
                <table>
                    <tr><td><label for="pic">Use yer chooser: </label></td><td>Current Pic:</td></tr>
                    <tr><td><input type="file" name="pic" id="pic"/></td><td rowspan="2">
                            <c:choose>
                                <c:when test="${user.profile.picture != null}">
                                    <img src="eindex?action=image&for=${user.username}"/>
                                </c:when>
                                <c:otherwise>
                                    <img src="images/domo.jpg"/>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                    <tr><td><input type="submit" value="Upload that puppy"/></td></tr>     
                </table>
            </form>
            <br/><br/><br/>
            <a class="nav" href="eindex?action=timeline">Back to the timeline</a>
            <a class="nav" href="eindex?action=pedit">Edit my profile</a>
        </div>
        <%@include file="footer.jspf"%>
    </body>
</html>
