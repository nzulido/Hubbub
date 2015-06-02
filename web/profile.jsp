<%@page contentType="text/html" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hubbub &raquo; Profile</title>
        <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    </head>
    <body>
        <div id="hd">
            <img src="images/headerlogo.png" alt="logo"/>
        </div>
        <div id="bd">
            <c:choose>
                <c:when test="${profileuser.profile.picture != null}">
                    <img src="eindex?action=image&for=${profileuser.username}"/>
                </c:when>
                <c:otherwise>
                    <img src="images/domo.jpg"/>
                </c:otherwise>
            </c:choose>
            <h1>Profile for
                <c:choose>
                    <c:when test="${not empty profileuser.profile.email}">
                        <a href="mailto:${profileuser.profile.email}">${profileuser.username}</a>
                    </c:when>
                    <c:otherwise>
                        ${profileuser.username}
                    </c:otherwise>
                </c:choose>

            </h1>
            <h2 class="flash">${flash}</h2>
            <p>Joined on ${profileuser.joindate}.</p>
            <div class="biography"> ${profileuser.profile.biography}</div>
            <c:if test="${sessionScope.user.id == profileuser.id}">
                <a class="nav" href="eindex?action=pedit">Edit my profile</a>
                <a class="nav" href="eindex?action=post">Post something</a>
            </c:if>
            <a class="nav" href="eindex">Take me back to the Timeline.</a>
        </div>
        <%@include file="footer.jspf"%>
    </body>
</html>
