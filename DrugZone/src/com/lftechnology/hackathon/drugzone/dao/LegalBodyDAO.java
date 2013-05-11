package com.lftechnology.hackathon.drugzone.dao;

import java.util.List;

import com.lftechnology.hackathon.drugzone.dto.Complain;
import com.lftechnology.hackathon.drugzone.dto.Drug;
import com.lftechnology.hackathon.drugzone.dto.User;

public interface LegalBodyDAO {
	
	public User getUser(User user);
	
	public List<Complain> getComplains();
	
	public boolean createDrug(Drug drug);

}
