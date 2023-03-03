package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		int number = Integer.parseInt(request.getParameter("number"));
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title></title></head><body>");
		out.print("<ul>"); 
			for(int i = 1; i <= 9; i++) {
			out.print("<li>" + number + " X " + i + " = " + (number*i) + "</li>");
		}
		out.print("</ul>");
		out.print("</body></html>");
		
	}
}