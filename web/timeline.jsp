<%@page contentType="text/html" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hubbub &raquo; Posts</title>
        <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    </head>
    <body>
        <div id="hd">
            <img src="images/headerlogo.png" alt="logo"/>
        </div>
        <div id="bd">
            <h1>Welcome to Hubbub!</h1>
            <h2 class="flash">${flash}</h2>
            <p>
                <c:choose>
                    <c:when test="${sessionScope.user.username != null}">
                        <a class="nav" href="eindex?action=post">Hey, ${sessionScope.user.username}! Post something!</a>
                        <a class="nav" href="eindex?action=wall">View my wall.</a>
                        <a class="nav" href="eindex?action=profile&username=${sessionScope.user.username}">View my profile</a>
                        <a class="nav" href="eindex?action=pedit">Update my profile</a>
                        <a class="nav" href="eindex?action=logout">Log out of Hubbub</a>
                    </c:when>
                    <c:otherwise>
                        <a class="nav" href="eindex?action=join">Sign up for Hubbub</a>
                        <a class="nav" href="eindex?action=login">Log in to Hubbub</a
                    </c:otherwise>
                </c:choose>
            </p>
            <h2>Time Line</h2>
            <c:forEach var="post" items="${posts}">
                <div class="post">
                    <c:choose>
                        <c:when test="${user.username != null}">
                            <a href="eindex?action=profile&username=${post.author.username}">
                                <span class="postAuthor">${post.author.username}</span>
                            </a>
                        </c:when>
                        <c:otherwise>
                            <span class="postAuthor">${post.author.username}</span>
                        </c:otherwise>
                    </c:choose>
                    <span class="postDate">(user since ${post.author.joindate})</span>
                    <div id="postContent">
                        ${post.content}
                    </div>
                    <span class="postDate">Posted ${post.postdate}</span>
                </div>   
            </c:forEach>    
        </div>
        <%@include file="footer.jspf"%>
    </body>
</html>
