<%@page import="com.winter.app.locations.LocationDAO"%>
<%@page import="com.winter.app.locations.LocationDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("location_id");
	LocationDTO locationDTO = new LocationDTO();
	locationDTO.setLocation_id(Integer.parseInt(id));
	
	LocationDAO locationDAO = new LocationDAO();
	locationDTO = locationDAO.getDetail(locationDTO);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./updateProcess.jsp" method="post">
		<input type="hidden" name="location_id" value="<%=locationDTO.getLocation_id() %>">
		<input type="text" name="street_address" value="<%=locationDTO.getStreet_address() %>">
		<input type="text" name="postal_code" value="<%=locationDTO.getPostal_code() %>">
		<input type="text" name="city" value="<%=locationDTO.getCity() %>">
		<input type="text" name="state_province" value="<%=locationDTO.getState_province() %>">
		<input type="text" name="country_id" value="<%=locationDTO.getCountry_id() %>">
		<button type="submit">수정</button>
	</form>
</body>
</html>