package member.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import member.model.Member;
import member.service.MemberService;

@WebServlet("/member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//service 객체 생성
	MemberService service = new MemberService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String nextPage = "";  //경로 변수
		HttpSession session = request.getSession(); //세션 객체 생성
		
		if(action.equals("memberList")) { //회원 목록
			List<Member> memberList = service.getMemberList();
			
			//모델을 저장
			request.setAttribute("memberList", memberList);
			nextPage = "/member/memberList.jsp";
		}else if(action.equals("addForm")) { //회원 가입 페이지
			nextPage = "/member/addForm.jsp";
		}else if(action.equals("add")) { //회원 가입
			//폼에 입력된 데이터 받기
			String mid = request.getParameter("mid");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			
			//Member 객체 생성
			Member member = new Member();
			member.setMid(mid);
			member.setPasswd(passwd);
			member.setName(name);
			member.setGender(gender);
			
			//가입 메서드 호출
			service.addMember(member);
			
			//가입 후 페이지 이동(url 주소)
			response.sendRedirect("/member?action=memberList");
			return;  //즉시 종료
		}else if(action.equals("info")) { //회원 정보
			String mid = request.getParameter("mid");
			
			//getMember() 호출
			Member member = service.getMember(mid);
			
			//모델 저장하기
			request.setAttribute("member", member);
			
			//뷰로 보내기
			nextPage = "/member/memberInfo.jsp";
		}else if(action.equals("loginForm")) {
			nextPage = "/member/loginForm.jsp";
		}else if(action.equals("login")) { //로그인 처리
			//폼에 입력된 데이터 받기
			String mid = request.getParameter("mid");
			String pw = request.getParameter("passwd");
			
			//로그인 메서드 호출
			boolean result = service.checkLogin(mid, pw);
			if(result) {
				//로그인 성공 - 세션 발급
				session.setAttribute("sessionId", mid);
				//로그인 후 이동 페이지(url 경로) - 인덱스 페이지
				response.sendRedirect("/");
				return; //즉시 종료
			}else {
				//로그인 실패
				String errorMsg = "아이디나 비밀번호를 확인해 주세요.";
				request.setAttribute("error", errorMsg);
				nextPage = "/member/loginForm.jsp";
			}
		}else if(action.equals("logout")) {
			//세션 삭제
			session.invalidate();
			response.sendRedirect("/");
			return; //즉시 종료
		}
		
		//포워딩 - nextPage(파일 경로)
		RequestDispatcher rd =
				request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}

}
