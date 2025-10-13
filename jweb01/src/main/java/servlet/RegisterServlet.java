package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/register") //http://localhost:8080/jweb01/register
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청 입력값 받기
		String name = request.getParameter("uname");
		String email = request.getParameter("email");
		
		System.out.println("이름: " + name);
		System.out.println("이메일: " + email);
		
		//응답 설정
		response.setContentType("text/html; charset=utf-8");
		
		//출력 스트림
		PrintWriter out = response.getWriter();
		
		//HTTP 응답
		out.println("<!DOCTYPE html><html>");
		out.println("<head><title>회원 가입</title></head>");
		out.println("<body><h2>회원 등록 결과</h2><hr>");
		out.println("<p>이름: " + name + "</p>");
		out.println("<p>이메일: " + email + "</p>");
		out.println("<a href='/jweb01/servlet/register.jsp'>다시 입력</a>");
		out.println("</body></html>");
	}
}










