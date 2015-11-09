package com.gogo.withgo.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.MemberVo;

@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate template;

	public MemberVo getMember(String email, String pw){
		MemberVo vo = new MemberVo(email, pw);
		return template.selectOne("memberSQL.getMember", vo);
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
