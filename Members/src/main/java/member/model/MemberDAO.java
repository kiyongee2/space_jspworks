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
	
	//회원 정보(1명)
	public Member getMember(String mid) {
		Member member = new Member();
		String sql = "select * from member where mid = ?";
		
		try(Connection conn = DBUtil.getConnection(); //db 연결
			PreparedStatement ps = conn.prepareStatement(sql)){
			ps.setString(1, mid);
			
			//db에서 1건 가져오기
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				member.setMid(rs.getString("mid"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setGender(rs.getString("gender"));
				member.setJoinDate(rs.getTimestamp("joindate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return member;
	}
	
	//회원 가입
	public void addMember(Member member) {
		String sql = "insert into member(mid, passwd, name, gender, joindate) "
				+ "values(?, ?, ?, ?, now())";
		
		try(Connection conn = DBUtil.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql)){
			ps.setString(1, member.getMid());  //폼의 아이디 가져와서 저장
			ps.setString(2, member.getPasswd());
			ps.setString(3, member.getName());
			ps.setString(4, member.getGender());
			ps.executeUpdate();  //실행 처리
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//로그인
	public boolean checkLogin(String mid, String passwd) {
		String sql = "select * from member where mid=? and passwd=?";
		
		try(Connection conn = DBUtil.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql)){
			ps.setString(1, mid);
			ps.setString(2, passwd);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}














