<%  
    session.removeAttribute("user");
    session.invalidate();
    response.sendRedirect("eindex");
%>