<%@ page import="java.io.*,java.util.*" contentType="text/html" %>
<%
out.println("charseki.chen@dbappsecurity.com.cn\n\n");
out.println("--------------------- Headers -----------------\n");
Enumeration headerNames = request.getHeaderNames();
while(headerNames.hasMoreElements()) {       
    String paramName = (String)headerNames.nextElement();       
    String paramValue = request.getHeader(paramName);
    out.println("["+paramName+"]"+" => "+paramValue);
}
out.println("\n");
out.println("--------------------- Request -----------------\n");

Enumeration paramsNames = request.getParameterNames();
while(paramsNames.hasMoreElements()) {
    String paramsName = (String)paramsNames.nextElement();
    String paramsValue = request.getParameter(paramsName);
    out.println("["+paramsName+"]"+" => "+paramsValue);}
%>
