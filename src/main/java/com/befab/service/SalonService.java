package com.befab.service;

import java.util.ArrayList;
import java.util.List;

import com.befab.model.Salon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.befab.persistence.SalonDao;
import com.befab.model.Adresse;

@Service
public class SalonService {
	@Autowired SalonDao salonDao;

	public ArrayList<Adresse> findAll() {
		return salonDao.findAll();
	}

	public List<Salon> findAllSalon(Adresse adresse) {
		return salonDao.findNearest(adresse);
	}

	public void save(Salon salon) {
		salonDao.save(salon);
	}
}
