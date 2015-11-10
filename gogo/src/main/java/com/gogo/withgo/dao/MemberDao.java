package com.gogo.withgo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.MemberVo;

@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate template;

	private static String sql = "memberSQL";
	
	public MemberVo getMember(String email, String pw){
		MemberVo vo = new MemberVo(email, pw);
		return template.selectOne(sql+".getMember", vo);
	}
	
	public String findEmail(String email){
		return template.selectOne(sql+".findEmail", email);
	}
	
	public String findNickname(String nickname){
		return template.selectOne(sql+".findNickname", nickname);
	}
	
	public void join(MemberVo vo){
		template.insert(sql+".join", vo);
	}
//	public MemberVo getMember(String email, String pw){
//		String query = "select * from member where email = ? and pw = ?";
//		MemberVo member = new MemberVo();
//		template.queryForObject(query, new String[]{email, pw}, (rs, rowNum)->{			
//			member.setEmail("email");
//			return member;
//		});
//		return member;
//	}
	
}
