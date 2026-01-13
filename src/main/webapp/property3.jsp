<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ page import="java.util.Properties" %>
<%@ page import="java.io.InputStream" %>

<%
    String profile =
        System.getProperty("spring.profiles.active");
    String path = "globals-" +
        profile + ".properties";

    Properties p = new Properties();
    InputStream is =
        Thread.currentThread().getContextClassLoader().getResourceAsStream(path);

    out.println("profile=" + profile + "<br/>");
    out.println("try load=" + path + "<br/>");

    if (is == null) {
        out.println("NOT FOUND on classpath<br/>");
    }
    else {
        p.load(is);
        out.println("env.name(from file)=" + p.getProperty("env.name") + "<br/>");
        is.close();
    }
%>
