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
}
