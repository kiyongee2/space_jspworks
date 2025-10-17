package member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DBUtil;

public class MemberDAO {
	
	//회원 목록 보기
	public List<Member> getMemberList(){
		//회원을 저장할 리스트 생성
		List<Member> memberList = new ArrayList<>();
		
		String sql = "select * from member";
		try(Connection conn = DBUtil.getConnection(); //db 연결
			PreparedStatement ps = conn.prepareStatement(sql); //sql 처리
			ResultSet rs = ps.executeQuery()){ //결과셋 - 검색된 데이터들
			
			while(rs.next()) {
				Member member = new Member(
					rs.getString("mid"),
					rs.getString("passwd"),
					rs.getString("name"),
					rs.getString("gender"),
					rs.getTimestamp("joindate")
				);
				memberList.add(member); //꺼내온 객체를 리스트에 저장
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return memberList;
	}
}

