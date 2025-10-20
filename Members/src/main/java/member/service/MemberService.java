package member.service;

import java.util.List;

import member.model.Member;
import member.model.MemberDAO;

public class MemberService {
	
	//dao 객체 생성
	MemberDAO dao = new MemberDAO();
	
	//목록 보기
	public List<Member> getMemberList(){
		return dao.getMemberList();
	}
	
	//회원 가입
	public void addMember(Member member) {
		dao.addMember(member);
	}
	
	//회원 정보
	public Member getMember(String mid) {
		return dao.getMember(mid);
	}
	
	//로그인
	public boolean checkLogin(String mid, String passwd) {
		return dao.checkLogin(mid, passwd);
	}
}








