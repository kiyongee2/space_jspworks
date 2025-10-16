package model;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/product")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//선택한 상품 받아오기
		String fruit = request.getParameter("fruit");
		
		//모델로 저장함
		request.setAttribute("fruit", fruit);
		
		//보내기 - 포워딩
		RequestDispatcher rd =
				request.getRequestDispatcher("/mvc/selProduct.jsp");
		rd.forward(request, response);
	}

}








