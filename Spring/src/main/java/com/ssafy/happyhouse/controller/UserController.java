package com.ssafy.happyhouse.controller;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.ssafy.happyhouse.model.dto.User;
import com.ssafy.happyhouse.model.service.JwtService;
import com.ssafy.happyhouse.model.service.UserService;

//@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/user")
public class UserController {
	
	public static final Logger logger = LoggerFactory.getLogger(UserController.class);

	
	@Autowired
	private JwtService jwtService;
	
	@Autowired
	private UserService service;
	
	@PostMapping("/confirm/login")
	public ResponseEntity<Map<String, Object>> login(@RequestBody User user, HttpServletResponse response, HttpSession session) {
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = null;
		try {
			User loginUser = service.login(user);
			System.out.println(user);
			
			if(loginUser != null) {
//				jwt.io에서 확인
//				로그인 성공했다면 토큰을 생성한다.
				String token = jwtService.create(loginUser);
				logger.trace("로그인 토큰정보 : {}", token);
				
//				토큰 정보는 response의 헤더로 보내고 나머지는 Map에 담는다.
//				response.setHeader("auth-token", token);
				resultMap.put("auth-token", token);
				resultMap.put("userid", loginUser.getUserid());
				resultMap.put("name", loginUser.getName());
				resultMap.put("number", loginUser.getNumber());
				resultMap.put("address", loginUser.getAddress());
				resultMap.put("roll", loginUser.getRoll());
				status = HttpStatus.ACCEPTED;
			} else {
				resultMap.put("message", "로그인 실패");
				status = HttpStatus.ACCEPTED;
			}
		} catch (Exception e) {
			logger.error("로그인 실패 : {}", e);
			resultMap.put("message", e.getMessage());
			status = HttpStatus.INTERNAL_SERVER_ERROR;
		}
		return new ResponseEntity<Map<String, Object>>(resultMap, status);
	}
	
	@PostMapping("/regist")
	public boolean regist(@RequestBody User user, HttpServletResponse response, HttpSession session) {
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = null;
		System.out.println(user);
		try {
			int result = service.regist(user);
			
			if(result > 0) {
				return true;
			} else {
				resultMap.put("message", "회원가입 실패");
				return false;
			}
		} catch (Exception e) {
			logger.error("회원가입 실패 : {}", e);
			resultMap.put("message", e.getMessage());
			return false;
		}
	}
	
	@GetMapping("/info")
	public ResponseEntity<Map<String, Object>> getInfo(HttpServletRequest req) {
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = HttpStatus.ACCEPTED;
		System.out.println(">>>>>> " + jwtService.get(req.getHeader("auth-token")));
		try {
			resultMap.putAll(jwtService.get(req.getHeader("auth-token")));
//
//			resultMap.put("status", true);
//			resultMap.put("info", info);
			status = HttpStatus.ACCEPTED;
		} catch (RuntimeException e) {
			logger.error("정보조회 실패 : {}", e);
			resultMap.put("message", e.getMessage());
			status = HttpStatus.INTERNAL_SERVER_ERROR;
		}
		return new ResponseEntity<Map<String, Object>>(resultMap, status);
	}
	
	@DeleteMapping("/withdraw")
	public ResponseEntity<Map<String, Object>> withdraw(HttpServletRequest req) {
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = HttpStatus.ACCEPTED;
		System.out.println(">>>>>> " + jwtService.get(req.getHeader("auth-token")));
		try {
			resultMap.putAll(jwtService.get(req.getHeader("auth-token")));
			status = HttpStatus.ACCEPTED;
		} catch (RuntimeException e) {
			logger.error("접근 실패 : {}", e);
			resultMap.put("msg", "err");
			status = HttpStatus.INTERNAL_SERVER_ERROR;
		}
//		System.out.println(resultMap.get("user").getClass());
		LinkedHashMap lhm = (LinkedHashMap) resultMap.get("user");
//		System.out.println(lhm.get("userid"));
		int res = service.withdraw((String)lhm.get("userid"));
		System.out.println(res);
		if(res == 1) {
			resultMap.put("msg", "success");
		} else {
			resultMap.put("msg", "fail");
		}
		return new ResponseEntity<Map<String, Object>>(resultMap, status);
	}
	

	@PutMapping("/edit")
	public boolean edit(@RequestBody User user, HttpServletResponse response, HttpSession session) {
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = null;
		System.out.println("edit>>>" + user);
		try {
			int result = service.edit(user);
			
			if(result > 0) {
				return true;
			} else {
				resultMap.put("message", "회원가입 실패");
				return false;
			}
		} catch (Exception e) {
			logger.error("회원가입 실패 : {}", e);
			resultMap.put("message", e.getMessage());
			return false;
		}
	}
	
	
//	@GetMapping("/admin")
//	public String admin(Model model) {
//		model.addAttribute("users", service.selectAll());
//		return "user/list";
//	}
}
