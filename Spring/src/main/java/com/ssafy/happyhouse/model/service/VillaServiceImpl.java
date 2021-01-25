package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.model.dto.SidoGugunCode;
import com.ssafy.happyhouse.model.dto.VillaInfo;
import com.ssafy.happyhouse.model.repo.VillaRepo;

@Service
public class VillaServiceImpl implements VillaService {
	@Autowired
	VillaRepo repo;

	@Override
	public List<SidoGugunCode> getSido() throws Exception { // TODO Auto-generated method stub
		return repo.getSido();
	}

	@Override
	public List<SidoGugunCode> getGugunInSido(String sido) throws Exception { // TODO Auto-generated method stub
		return repo.getGugunInSido(sido);
	}

	@Override
	public List<VillaInfo> getDongInGugun(String gugun) throws Exception { // TODO Auto-generated method stub
		return repo.getDongInGugun(gugun);
	}

	@Override
	public List<VillaInfo> getVillaInDong(String dong) throws Exception { // TODO Auto-generated method stub
		return repo.getVillaInDong(dong);
	}

	@Override
	public List<VillaInfo> getAllVilla(int page) throws Exception { // TODO Auto-generated method stub
		return repo.getAllVilla(page*15);
	}

	@Override
	public List<VillaInfo> getVillaName(String villaName) throws Exception { // TODO Auto-generated method stub
		return repo.getVillaName(villaName);
	}

}
