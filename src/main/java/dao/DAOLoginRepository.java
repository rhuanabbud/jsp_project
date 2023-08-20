package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import model.ModelLogin;

public class DAOLoginRepository {

	private Connection conn;

	public DAOLoginRepository() {
		conn = SingleConnectionBanco.getConnection();
	}

	public Boolean validarAutenticacao(ModelLogin modelLogin) throws Exception {

		String sql = "select * from model_login where login = ? and senha = ? ";

		PreparedStatement statement = conn.prepareStatement(sql);

		statement.setString(1, modelLogin.getLogin());
		statement.setString(2, modelLogin.getSenha());

		ResultSet result = statement.executeQuery();

		if (result.next()) {
			return true;
		}

		return false;
	}
}
