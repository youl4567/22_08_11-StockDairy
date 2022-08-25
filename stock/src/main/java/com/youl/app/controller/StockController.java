package com.youl.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.youl.app.model.StockVO;
import com.youl.app.model.UserVO;
import com.youl.app.service.StockService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value="/mypage")
public class StockController {

	private final StockService stockService;

	public StockController(StockService stockService) {
		this.stockService = stockService;
	}

	@RequestMapping(value="/my_list", method = RequestMethod.GET)
	public String my_list(Model model, HttpSession session) {
		
		session.getAttribute("USER");
		List<StockVO> stockList = stockService.selectAll();
		model.addAttribute("stock", stockList);
		
		return "/mypage/my_list";
	}
	
	@RequestMapping(value="/stock_write", method= RequestMethod.GET)
	public String stock_write(Model model) {
		
		
		
		return "/mypage/stock_write";
	}
	@RequestMapping(value="/stock_write", method= RequestMethod.POST)
	public String stock_write(Model model, HttpSession session) {
		
		UserVO loginUser = (UserVO)session.getAttribute("USER");
		
		StockVO stockVO = StockVO.builder()
							.s_user(loginUser.getUsername())
							.build();
		
		model.addAttribute("stock", stockVO);
		
		stockService.insert(stockVO);
		
		return "redirect:/mypage/my_list";
	}
	
	
}
