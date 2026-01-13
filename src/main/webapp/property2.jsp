<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.egovframe.rte.fdl.property.EgovPropertyService" %>

<%
    String profile = System.getProperty("spring.profiles.active");

    EgovPropertyService ps =
        (EgovPropertyService)application.getAttribute("propertiesService");

    out.println("spring.profiles.active = " + System.getProperty("spring.profiles.active"));
    out.println("<br/>env.name = " + ps.getString("env.name"));
%>
