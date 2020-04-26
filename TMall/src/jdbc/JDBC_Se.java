package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.jupiter.api.Test;

public class JDBC_Se {
	@Test
	public void getConn() {
		// DriverManager:注册驱动 创建连接
		// Connection : 表示与数据库创建的连接 一个连接
		// Statement : 操作数据库sql语句的对象 操作sql语句，并返回相应结果集的对象
		// ResultSet : 结果集或者一张虚拟表

		// 注册驱动
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("1.成功进入Driver----");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("error Driver");
			e.printStackTrace();
		}
		// 获取连接Connection
		try {
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/tmall_springboot?serverTimezone=UTC&characterEncoding=utf8&amp",
					"root", "123456");
			System.out.println("2.成功与数据库进行连接Connection------");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from user");
			while (rs.next()) {
				System.out.println(rs.getString("name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("error Connection");
			e.printStackTrace();
		}
	}
}
