<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	JSONObject json1 = new JSONObject();
	json1.put("id", "root");	
	json1.put("pw", "1234");	
	json1.put("tel", "011");	
	
	JSONObject json2 = new JSONObject();
	json2.put("id", "hong");	
	json2.put("pw", "1111");	
	json2.put("tel", "022");	
	
	JSONArray arr = new JSONArray();
	arr.add(json1);
	arr.add(json2);
	
	out.println(arr.toJSONString());
%>