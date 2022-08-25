package com.youl.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.youl.app.model.BoardVO;
import com.youl.app.model.UserVO;
import com.youl.app.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping(value = "/board")
public class BoardController {

	private final BoardService boardService;

	public BoardController(BoardService boardService) {
		this.boardService = boardService;
	}

	public String boardHome() {
		return "redirect:/board/board_list";
	}

	// 게시판 리스트
	@RequestMapping(value = "/board_list", method = RequestMethod.GET)
	public String board_list(Model model, HttpSession session) {

		session.getAttribute("USER");
		List<BoardVO> boardList = boardService.selectAll();

		model.addAttribute("board", boardList);

		return "/board/board_list";
	}

	// 게시글 작성 get
	@RequestMapping(value = "/board_write", method = RequestMethod.GET)
	public String board_write(Model model, HttpSession session) {

		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat dayFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");

		UserVO loginUser = (UserVO) session.getAttribute("USER");

		BoardVO boardVO = BoardVO.builder()
				.b_date(dayFormat.format(date))
				.b_time(timeFormat.format(date))
				.b_writer(loginUser.getUsername())
				.build();
		model.addAttribute("board", boardVO);

		return "/board/board_write";
	}

	// 게시글 작성 post
	@RequestMapping(value = "/board_write", method = RequestMethod.POST)
	public String board_write(BoardVO boardVO) {

		boardService.insert(boardVO);

		return "redirect:/board/board_list";
	}
	
	// 수정
	@RequestMapping(value = "{b_num}/board_update", method=RequestMethod.GET)
	public String board_update(@PathVariable("b_num") int b_num, Model model, HttpSession session) {
		
		UserVO loginUser = (UserVO)session.getAttribute("USER");
		BoardVO boardVO = boardService.findByNumber(b_num);
		
		model.addAttribute("board", boardVO);
		
		return "/board/board_write";
	}
	
	@RequestMapping(value="{b_num}/board_update", method=RequestMethod.POST)
	public String board_update(BoardVO boardVO, Model model, HttpSession session) {
		
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat dayFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
			
		UserVO loginUser = (UserVO)session.getAttribute("USER");
		if(loginUser == null) {
			return "redirect:/user/user_login";
		}
		
		boardVO.setB_date(dayFormat.format(date));
		boardVO.setB_time(timeFormat.format(date));
		boardService.update(boardVO);
		
		model.addAttribute("board", boardVO);
		
		String retStr = String.format("redirect:/board/%s/board_detail", boardVO.getB_num());
		return retStr;
	}
	
	// 삭제
	@RequestMapping(value="/{b_num}/board_delete", method=RequestMethod.GET)
	public String delete(@PathVariable("b_num") String b_num) {
		
		int ret = boardService.deleteByNum(b_num);
		return "redirect:/board/board_list";
	}

	// 게시글 페이지
	@RequestMapping(value = "{b_num}/board_detail", method = RequestMethod.GET)
	public String board_detail(@PathVariable("b_num") int b_num, Model model, HttpSession session) {

		BoardVO boardVO = boardService.findByNumber(b_num);
		return "board/board_detail";

	}
	
	

}
