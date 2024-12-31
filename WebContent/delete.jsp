<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="Dao.BookDao"%>

<%
	int bookId = Integer.parseInt(request.getParameter("id")); 
	BookDao bookDao = new BookDao();

	try {
		bookDao.deleteBook(bookId); 
		response.sendRedirect("view.jsp"); 
	} catch (SQLException e) {
		e.printStackTrace();
		out.print("<script type='text/javascript'>");
		out.print("alert('An error occurred while deleting the book.');");
		out.print("window.location.href = 'view.jsp';");
		out.print("</script>");
	}
%>
