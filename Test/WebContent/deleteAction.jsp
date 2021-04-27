<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="Board.BoardDAO"%>
<%@ page import="Board.Board"%>
<%@ page import="java.io.PrintWriter"%>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>이상훈 게시판 웹사이트</title>

</head>

<body>

	<%

		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}

		if (userID == null) {
			PrintWriter script = response.getWriter();

			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} 

		int bdID = 0;

		if(request.getParameter("bdID") != null){
			bdID = Integer.parseInt(request.getParameter("bdID"));
		}

		if(bdID == 0) {

			PrintWriter script = response.getWriter();

			script.println("<script>");
			script.println("alert('유효하지 않은 글 입니다')");
			script.println("location.href='bbs.jsp'");
			script.println("</script>");

		}

		Board bd = new BoardDAO().getBd(bdID);

		if(!userID.equals(bd.getUserID())) {

			PrintWriter script = response.getWriter();

			script.println("<script>");
			script.println("alert('권한이 없습니다')");
			script.println("location.href='bbs.jsp'");
			script.println("</script>");			
		}

		else{

			BoardDAO bdDAO = new BoardDAO();

			int result = bdDAO.delete(bdID);

			if (result == -1) {

				PrintWriter script = response.getWriter();

				script.println("<script>");
				script.println("alert('글 삭제에 실패했습니다')");
				script.println("history.back()");
				script.println("</script>");

			} else {

				PrintWriter script = response.getWriter();

				script.println("<script>");
				script.println("location.href='board.jsp'");
				script.println("</script>");
			}
		}
	%>

</body>
</html>