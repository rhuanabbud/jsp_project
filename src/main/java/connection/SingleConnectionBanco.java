package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionBanco {

	private static String BANCO = "jdbc:postgresql://localhost:5432/curso-jsp?autoReconnect-true";
	private static String USER = "postgres";
	private static String SENHA = "admin";
	private static Connection conn = null;

	public static Connection getConnection() {
		return conn;
	}

	static {
		conectar();
	}

	public SingleConnectionBanco() {
		conectar();
	}

	private static void conectar() {

		try {

			if (conn == null || conn.isClosed()) {
				Class.forName("org.postgresql.Driver");
				conn = DriverManager.getConnection(BANCO, USER, SENHA);
				conn.setAutoCommit(false);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
