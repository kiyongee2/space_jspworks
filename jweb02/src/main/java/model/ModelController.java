package model;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/model")
public class ModelController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//변수 데이터
		String season = "가을";
		
		//"season" 모델을 뷰에 보내줌
		request.setAttribute("season", season);
		
		//리스트 보내기
		List<String> fruits = Arrays.asList("사과", "바나나", "딸기");
		request.setAttribute("fruits", fruits);
		
		//포워딩 - 페이지 이동
		RequestDispatcher rd =
				request.getRequestDispatcher("/mvc/mvc01.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
