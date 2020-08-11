package creakok.com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Board;
import creakok.com.domain.Creator;
import creakok.com.service.BoardService;
import creakok.com.vo.ListResult;
import lombok.extern.log4j.Log4j;

@Log4j
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
	
	@RequestMapping("board_page_byView")
	public ModelAndView getListResultByView(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		
		ListResult listResult = service.getListResultByViewS(cp, ps);
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("community");
		mv.addObject("listResult", listResult);
		
		// 크리에이터 이름 얻기
		List<Creator> creatorList = service.getCreatorName();
		mv.addObject("creatorList", creatorList);
		
		return mv;
	}
	
	@RequestMapping("board_page_byLike")
	public ModelAndView getListResultByLike(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		
		
		ListResult listResult = service.getListResultByLikeS(cp, ps);
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("community");
		mv.addObject("listResult", listResult);
		
		// 크리에이터 이름 얻기
		List<Creator> creatorList = service.getCreatorName();
		mv.addObject("creatorList", creatorList);
		
		return mv;
	}
	
	@RequestMapping("board_content")
	public ModelAndView content(HttpServletRequest request, HttpServletResponse response, HttpSession session, 
			@RequestParam long board_index) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community_board_content");
		
		Board board = service.contentS(board_index);
		
		
		Cookie[] cookies = request.getCookies();
		// 비교하기 위해 새로운 쿠키
        Cookie viewCookie = null;
        
        // 쿠키가 있을 경우 
        if (cookies != null && cookies.length > 0) {
            for (int i = 0; i < cookies.length; i++) {
                // Cookie의 name이 cookie + reviewNo와 일치하는 쿠키를 viewCookie에 넣어줌 
                if (cookies[i].getName().equals("cookie"+board_index)) { 
                    System.out.println("처음 쿠키가 생성한 뒤 들어옴.");
                    viewCookie = cookies[i];
                }
            }
        }
        
        if (board != null) {
            System.out.println("System - 해당 상세페이지로 넘어감");
            
            mv.addObject("board", board);
 
            // 만일 viewCookie가 null일 경우 쿠키를 생성해서 조회수 증가 로직을 처리함.
            if (viewCookie == null) {    
                System.out.println("cookie 없음");
                
                // 쿠키 생성(이름, 값)
                Cookie newCookie = new Cookie("cookie"+board_index, "|" + board_index + "|");
                                
                // 쿠키 추가
                response.addCookie(newCookie);
 
                // 쿠키를 추가 시키고 조회수 증가시킴
                boolean result = service.plusView(board_index);
                
                if(result) {
                    System.out.println("조회수 증가");
                }else {
                    System.out.println("조회수 증가 에러");
                }
            }
            // viewCookie가 null이 아닐경우 쿠키가 있으므로 조회수 증가 로직을 처리하지 않음.
            else {
                System.out.println("cookie 있음");
                
                // 쿠키 값 받아옴.
                String value = viewCookie.getValue();
                
                System.out.println("cookie 값 : " + value);
        
            }
         // 메뉴바 크리에이터 이름 얻기
    		List<Creator> creatorList = service.getCreatorName();
    		mv.addObject("creatorList", creatorList);
    		
            return mv;
        } 
        else {
        	// 메뉴바 크리에이터 이름 얻기
    		List<Creator> creatorList = service.getCreatorName();
    		mv.addObject("creatorList", creatorList);
    		
            return mv;
        }

	}
	
	@GetMapping("board_write")
	public ModelAndView boardWrite() {
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("community_board_write");
			
		// 메뉴바 크리에이터 이름 얻기
		List<Creator> creatorList = service.getCreatorName();
		mv.addObject("creatorList", creatorList);
			
		return mv;
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
	
	// 삭제
	@RequestMapping("board_delete")
	public String deleteBoard(@RequestParam long board_index) {
		service.deleteBoard(board_index);
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
