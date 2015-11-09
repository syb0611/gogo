package com.gogo.withgo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gogo.withgo.vo.MessageVo;

@Repository
public class MessageDao {
	@Autowired
	private SqlSessionTemplate template;
	
	private static final String sql = "messageSQL";
	
	public void send(MessageVo vo){
		template.insert(sql+".send", vo);
	}
	
	public List<MessageVo> getSendMsg(String fromname){
		return template.selectList(sql+".getSendMsg", fromname);
	}
	
	public List<MessageVo> getReceiveMsg(String toname){
		return template.selectList(sql+".getReceiveMsg", toname);
	}
	
	public MessageVo read(int msgno){
		return template.selectOne(sql+".read", msgno);
	}
	
	public void check(int msgno){
		template.update(sql+".check", msgno);
	}
	
	public void delete(int msgno){
		template.delete(sql+".delete", msgno);
	}
}
