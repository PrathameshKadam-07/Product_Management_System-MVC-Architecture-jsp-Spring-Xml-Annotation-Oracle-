package com.model;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.bean.Product;

public class RowMapperImp implements RowMapper<Product>{
@Override
public Product mapRow(ResultSet rs, int cnt) throws SQLException {
	Product p = new Product();
	p.setPid(rs.getInt(1));
	p.setPname(rs.getString(2));
	p.setQty(rs.getInt(3));
	p.setPrice(rs.getInt(4));
	
	return p;
}
}
