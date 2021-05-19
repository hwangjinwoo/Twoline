<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="twoline.OnelineDTO" %>
<%@ page import="twoline.OnelineDAO" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메모장</title>
	<style>
			@import url('https://fonts.googleapis.com/css2?family=Poor+Story&display=swap');
			
			p{
				font-family: 'Poor Story', cursive;
				font-size: 20px;
			}
				
			h3{
				
			 	margin: 100px 0px;
			 	font-size: 60px ;
			 	text-align: center;
			 	color: rgb(0, 128, 255);
			 	
			}
			
			input[type="submit"]{
			 	text-align:center;
			 	width: 100px;
			 	height: 30px;
			 	margin-top: 15px; 
			}
			fieldset{
			 	text-align:center;
			 	padding: 50px;
			 }
			 legend {
				text-align:center;
				font-size:50px;		 
			 }
			 body {
			 	background-image: url('https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMTVfMTg0%2FMDAxNjEzMzg1MzI1NjM4.flFuCUQr7I4OXv_i4xsxrg-HnFa8_leG07WZVt5Ng7Ig.TevKLqyrYEPNb1hdrGmwY0PqNcKWQ3vAkpjlgp4ODDUg.JPEG.oec9017%2F%25B9%25AB%25C1%25A637_20210210003859.jpg');
			 	text-align:center;
			 }

	</style>
</head>
<%
	OnelineDAO dao = new OnelineDAO();
	ArrayList<OnelineDTO> dtos = dao.getlist();
%>

<body>
<h3>*OneLine*</h3><hr>
	<fieldset class="size"></fieldset>
		<legend>메모장</legend>
			<form method="post" action="memo_write.jsp">
			<input type="text" name="memo"></input>
			<input type="submit" value="등록"></input>
			</form>
<% 
	for(int i =0; i < dtos.size(); i++) {
		OnelineDTO dto = dtos.get(1);
		out.println("<p>("+dto.getWdate()+") "+ dto.getMemo() + 
				"<input type=\"button\" value=\"X\" onClick=\"location.href='memo_delete.jsp?no="+dto.getNo()+"'\"><br>");
		out.println("</input></p>");
	}	
%>
		
</body>
</html>