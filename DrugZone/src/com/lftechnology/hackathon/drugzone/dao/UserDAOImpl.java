package com.lftechnology.hackathon.drugzone.dao;


import java.util.ArrayList;
import java.util.List;

import com.lftechnology.hackathon.drugzone.dao.BaseDAO;
import com.lftechnology.hackathon.drugzone.dto.Complain;
import com.lftechnology.hackathon.drugzone.dto.Drug;


public class UserDAOImpl extends BaseDAO implements UserDAO  {

	@Override
	public Drug getDrug(String code) {
		
		
		Drug  drug = null;
		String query = "SELECT * FROM batch b join drug a WHERE code = ? and b.drug_id = a.id";
		
        try {
            connect();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, code);

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
            	drug = new Drug();
            
            	drug.setId(resultSet.getInt("id"));
            	drug.setCode(resultSet.getString("code"));
            	drug.setCost(resultSet.getBigDecimal("cost"));
            	drug.setManufacturer(resultSet.getString("manufacturer"));
            	drug.setManufactureDate(resultSet.getDate("manufacture_date"));
            	drug.setExpireDate(resultSet.getDate("expire_date"));
                drug.setName(resultSet.getString("name"));
                drug.setSideEffect(resultSet.getString("side_effect"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }

        return drug;
	}

	@Override
	public void passComplain(Complain complain) {
		
		String query = "INSERT INTO complain (pharmacy_name , drug_code , address , hospital_name , email , phone_number) VALUES(? , ? , ? , ? , ? , ?) ";
		
		try {
            connect();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, complain.getPharmacyName());
            preparedStatement.setString(2 ,  complain.getDrugCode());
            preparedStatement.setString(3, complain.getAddress());
            preparedStatement.setString(4, complain.getHospitalName());
            preparedStatement.setString(5, complain.getEmail());
            preparedStatement.setString(6, complain.getPhoneNumber());
            

            preparedStatement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            close();
        }

   
		
	}

	@Override
	public List<String> getCodes(String term) {
		List<String> codes = new ArrayList<String>();
		String code=null;
		String query = "SELECT code FROM batch WHERE code like ?";
		 try {
	            connect();
	            preparedStatement = connection.prepareStatement(query);
	            preparedStatement.setString(1, "%"+term+"%");

	            resultSet = preparedStatement.executeQuery();

	            while (resultSet.next()) {
	            	codes.add(resultSet.getString("code"));
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            close();
	        }
		return codes;
	}

}
