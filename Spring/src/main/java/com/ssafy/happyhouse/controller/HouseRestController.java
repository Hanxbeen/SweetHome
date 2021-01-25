package com.ssafy.happyhouse.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.dto.AptInfo;
import com.ssafy.happyhouse.model.dto.VillaInfo;
import com.ssafy.happyhouse.model.service.AptService;
import com.ssafy.happyhouse.model.service.VillaService;

//@CrossOrigin("*")
@RestController
@RequestMapping("/house")
public class HouseRestController {
	@Autowired
	VillaService vservice;
	
	@Autowired
	AptService aservice;
	
	@GetMapping("/v/{word}")
	public List<VillaInfo> getVilla(@PathVariable String word) throws Exception{
		List<VillaInfo> res = new ArrayList<>();
		res.addAll(vservice.getVillaName(word));
		res.addAll(vservice.getVillaInDong(word));
		return res;
	}
	
	@GetMapping("/v")
	public List<VillaInfo> getAllVilla() throws Exception{
		List<VillaInfo> res = new ArrayList<>();
		res.addAll(vservice.getVillaName(""));
		res.addAll(vservice.getVillaInDong(""));
		return res;
	}
	
	@GetMapping("/vn/{villaName}")
	public List<VillaInfo> getVillaByName(@PathVariable String villaName) throws Exception{
		return vservice.getVillaName(villaName);
	}
	
	@GetMapping("/vc/{dong}")
	public List<VillaInfo> getVillaByDong(@PathVariable String dong) throws Exception{
		return vservice.getVillaInDong(dong);
	}
	
	@GetMapping("/a/{word}")
	public List<AptInfo> getApt(@PathVariable String word) throws Exception{
		List<AptInfo> res = new ArrayList<>();
		res.addAll(aservice.getAptName(word));
		res.addAll(aservice.getAptInDong(word));
		return res;
	}
	
	@GetMapping("/a")
	public List<AptInfo> getAllApt() throws Exception{
		List<AptInfo> res = new ArrayList<>();
		res.addAll(aservice.getAptName(""));
		res.addAll(aservice.getAptInDong(""));
		return res;
	}
	
	@GetMapping("/an/{aptName}")
	public List<AptInfo> getAptByName(@PathVariable String aptName) throws Exception{
		return aservice.getAptName(aptName);
	}
	
	@GetMapping("/ac/{dong}")
	public List<AptInfo> getCityByDong(@PathVariable String dong) throws Exception{
		return aservice.getAptInDong(dong);
	}
	
}
