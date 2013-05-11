package com.lftechnology.hackathon.drugzone.dao;

import com.lftechnology.hackathon.drugzone.dto.Complain;
import com.lftechnology.hackathon.drugzone.dto.Drug;

public interface UserDAO {

	public Drug getDrug(String code);
	public void passComplain(Complain complain);
}
