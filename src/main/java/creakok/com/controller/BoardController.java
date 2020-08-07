package creakok.com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Board;
import creakok.com.domain.Creator;
import creakok.com.service.BoardService;
import creakok.com.vo.ListResult;

@Controller
public class BoardController {
	@Autowired
	private BoardService service;
	
	@RequestMapping("board_page")
	public ModelAndView getListResult(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
		HttpSession session = request.getSession();		
		
		//(1) cp 
		int cp = 1;
		if(cpStr == null) {
			Object cpObj = session.getAttribute("cp");
			if(cpObj != null) {
				cp = (Integer)cpObj;
			}
		}else {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}
		session.setAttribute("cp", cp);
		
		//(2) ps 
		int ps = 3;
		if(psStr == null) {
			Object psObj = session.getAttribute("ps");
			if(psObj != null) {
				ps = (Integer)psObj;
			}
		}else {
			psStr = psStr.trim();
			int psParam = Integer.parseInt(psStr);
			
			Object psObj = session.getAttribute("ps");
			if(psObj != null) {
				int psSession = (Integer)psObj;
				if(psSession != psParam) {
					cp = 1;
					session.setAttribute("cp", cp);
				}
			}else {
				if(ps != psParam) {
					cp = 1;
					session.setAttribute("cp", cp);
				}
			}
			
			ps = psParam;
		}
		session.setAttribute("ps", ps);
		
		
		ListResult listResult = service.getListResultS(cp, ps);
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("community");
		mv.addObject("listResult", listResult);
		
		// 크리에이터 이름 얻기
		List<Creator> creatorList = service.getCreatorName();
		mv.addObject("creatorList", creatorList);
		
		return mv;
	}
	
	@RequestMapping("board_content")
	public ModelAndView content(@RequestParam long board_index) {
		//조회수 +1
		service.plusView(board_index);
		
		Board board = service.contentS(board_index);
	
		return new ModelAndView("community_board_content", "board", board);
	}
	
	@RequestMapping("board_like")
	public ModelAndView like(@RequestParam long board_index) {
		//좋아요 +1
		service.plusLike(board_index);
		
		Board board = service.contentS(board_index);
	
		return new ModelAndView("community_board_content", "board", board);
	}

	@GetMapping("board_write")
	public String boardWrite() {
	  return "community_board_write";
	}
	
	@GetMapping("board_insert")
	public String insert() {
		
		return "community_board_insert";
	}
	
	@PostMapping("board_insert")
	public String insert(Board board) {
		
		service.insertS(board);
		return "redirect:board_page";	
	}
	
	@PostMapping("board_write")
	public String write(Board board) {
		service.insertBoard(board);
		return "redirect: /board_content?board_index="+ board.getBoard_index();
	}
	
	@GetMapping("board_update")
	public ModelAndView update(long board_index) {
		Board board = service.getBoard(board_index);
		ModelAndView mv = new ModelAndView("community_board_update", "board", board);
				
		return mv;
	}
	
	@PostMapping("board_update")
	public String update(Board board) {
		service.edit(board);
		return "redirect:board_page";
	}
	
	
	// for Ajax 검색 
	
	@GetMapping("board_search01")
	public @ResponseBody List<Board> search01(String board_subject) {
		List<Board> list = service.selectBySubjectS(board_subject);
		return list; // xml, json
	}
	
	@PostMapping("board_search02")
	public @ResponseBody List<Board> search02(String member_name) {
		List<Board> list = service.selectByNameS(member_name);
		return list; // xml, json
	}

}
