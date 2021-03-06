package com.ssafy.happyhouse.model.repo;

import java.util.List;

import com.ssafy.happyhouse.model.dto.SidoGugunCode;
import com.ssafy.happyhouse.model.dto.VillaInfo;

public interface VillaRepo {

	List<SidoGugunCode> getSido() throws Exception;
	List<SidoGugunCode> getGugunInSido(String sido) throws Exception;
	List<VillaInfo> getDongInGugun(String gugun) throws Exception;
	List<VillaInfo> getAllVilla(int page) throws Exception;
	List<VillaInfo> getVillaInDong(String dong) throws Exception;
	List<VillaInfo> getVillaName(String villaName) throws Exception;
	
}
