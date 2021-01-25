package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.dto.AptInfo;
import com.ssafy.happyhouse.model.dto.SidoGugunCode;
import com.ssafy.happyhouse.model.repo.AptRepo;

@Service
public class AptServiceImpl implements AptService {

	@Autowired
	AptRepo repo;

	@Override
	public List<SidoGugunCode> getSido() throws Exception {
		return repo.getSido();
	}

	@Override
	public List<SidoGugunCode> getGugunInSido(String sido) throws Exception {
		return repo.getGugunInSido(sido);
	}

	@Override
	public List<AptInfo> getDongInGugun(String gugun) throws Exception {
		return repo.getDongInGugun(gugun);
	}

	@Override
	public List<AptInfo> getAptInDong(String dong) throws Exception {
		return repo.getAptInDong(dong);
	}

	@Override
	public List<AptInfo> getAllApt(int page) throws Exception {
		return repo.getAllApt(page*15);
	}

	@Override
	public List<AptInfo> getAptName(String aptName) throws Exception {
		return repo.getAptName(aptName);
	}

}
