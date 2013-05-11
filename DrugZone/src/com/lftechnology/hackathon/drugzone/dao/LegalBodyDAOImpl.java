package com.lftechnology.hackathon.drugzone.dao;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.lftechnology.hackathon.drugzone.dto.Complain;
import com.lftechnology.hackathon.drugzone.dto.Drug;
import com.lftechnology.hackathon.drugzone.dto.User;

public class LegalBodyDAOImpl extends BaseDAO implements LegalBodyDAO {

	@Override
	public User getUser(User user) {

		String query = "SELECT id,username FROM user WHERE username = ? and password=?";

		try {
			connect();
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());

			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				user = new User();
				user.setId(resultSet.getInt("id"));
				user.setUsername(resultSet.getString("username"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return user;

	}

	@Override
	public List<Complain> getComplains() {

		List<Complain> complains = new ArrayList<Complain>();
		Complain complain;
		String query = "SELECT * FROM complain";

		try {
			connect();
			preparedStatement = connection.prepareStatement(query);

			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				complain = new Complain();

				complain.setId(resultSet.getInt("id"));
				complain.setPharmacyName(resultSet.getString("pharmacy_name"));
				complain.setDrugCode(resultSet.getString("drug_code"));
				complain.setAddress(resultSet.getString("address"));
				complain.setHospitalName(resultSet.getString("hospital_name"));
				complain.setEmail(resultSet.getString("email"));
				complain.setPhoneNumber(resultSet.getString("phone_number"));
				complains.add(complain);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return complains;

	}

	@Override
	public boolean createDrug(Drug drug) {
		// TODO Auto-generated method stub
		String query = "INSERT INTO drug ( name, side_effect , code , cost, manufacture_date , expire_date ,manufacturer) VALUES(? , ? , ? , ? , ? , ? , ?)";

		try {
			connect();
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, drug.getName());
			preparedStatement.setString(2, drug.getSideEffect());
			preparedStatement.setString(3, drug.getCode());
			preparedStatement.setBigDecimal(4, drug.getCost());
			preparedStatement.setDate(5, (java.sql.Date) drug.getManufactureDate());
			preparedStatement.setDate(6, (java.sql.Date)drug.getExpireDate());
			preparedStatement.setString(7, drug.getManufacturer());

			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return false;
	}

}
