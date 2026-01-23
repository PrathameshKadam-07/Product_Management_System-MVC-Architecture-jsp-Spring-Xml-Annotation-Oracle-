package com.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.bean.userpass;

public class AuthMapperImp implements RowMapper<userpass>{

	@Override
	public userpass mapRow(ResultSet rs, int cnt) throws SQLException {
	
		userpass up = new userpass();
		up.setPass(rs.getString(1));
		up.setUname(rs.getString(2));
	
		return up;
	}

}
