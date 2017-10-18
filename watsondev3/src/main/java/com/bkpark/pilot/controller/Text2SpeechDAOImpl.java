package com.bkpark.pilot.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("springJDBC")
public class Text2SpeechDAOImpl implements Text2SpeechDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public void insertText2Speech(Text2SpeechVO vo) throws Exception {
		Object[] args = new Object[] {
			vo.getAnger(),
			vo.getDisgust(),
			vo.getFear(),
			vo.getJoy(),
			vo.getSadness(),
			vo.getText()
		};
		
		jdbcTemplate.update(
				"insert into tbl_emotions(anger, disgust, fear, joy, sadness, text) values(?, ?, ?, ?, ?, ?)",args);
	}

	@Override
	public List<Text2SpeechVO> getText2SpeechList() throws Exception {
		RowMapper<Text2SpeechVO> rowMapper = new RowMapper<Text2SpeechVO>() {

			@Override
			public Text2SpeechVO mapRow(ResultSet rs, int rownum) throws SQLException {
				Text2SpeechVO vo = new Text2SpeechVO();
				vo.setAnger(rs.getDouble("anger"));
				vo.setDisgust(rs.getDouble("disgust"));
				vo.setFear(rs.getDouble("fear"));
				vo.setJoy(rs.getDouble("joy"));
				vo.setSadness(rs.getDouble("sadness"));
				vo.setText(rs.getString("text"));
				return vo;
			}
			
		};
		return jdbcTemplate.query(
			" select anger, disgust, fear, joy, sadness, text  from tbl_emotions", rowMapper);
	}

	@Override
	public int deleteText2Speech(int no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}
