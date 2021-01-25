package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.model.dto.AptInfo;
import com.ssafy.happyhouse.model.dto.SidoGugunCode;


public interface AptService {
	
	List<SidoGugunCode> getSido() throws Exception;
	List<SidoGugunCode> getGugunInSido(String sido) throws Exception;
	List<AptInfo> getDongInGugun(String gugun) throws Exception;
	List<AptInfo> getAptInDong(String dong) throws Exception;
	List<AptInfo> getAllApt(int page) throws Exception;
	List<AptInfo> getAptName(String aptName) throws Exception;
	
}
