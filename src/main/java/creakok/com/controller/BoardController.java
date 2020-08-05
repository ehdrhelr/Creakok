package creakok.com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Board;
import creakok.com.service.BoardService;
import creakok.com.vo.ListResult;
import creakok.com.vo.PagingBoardVo;

@Controller
public class BoardController {
	@Autowired
	private BoardService service;
	
	@RequestMapping("board_list.do")
	public ModelAndView list(PagingBoardVo pagingBoardVo) {
		
		List<Board> list = service.selectPerPageS(pagingBoardVo);
		long totalCount = service.selectCountS();
		pagingBoardVo.setTotal(totalCount);
		
		ModelAndView mv = new ModelAndView("community");
		mv.addObject("list", list);
		mv.addObject("p", pagingBoardVo);
		
		return mv;
	}
	

	private void review(HttpServletRequest request, HttpServletResponse response) 
	         throws ServletException, IOException {
		String cpStr = request.getParameter("cp");
		HttpSession session = request.getSession();
		System.out.println(cpStr);
		int cp = 1;
		if(cpStr == null) {
			Object cpObj = session.getAttribute("cp");
			if(cpObj != null) {
				cp = (Integer)cpObj;
			}
		} else {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}
		session.setAttribute("cp", cp);
		
		int ps = 5;
		session.setAttribute("ps", ps);
		
		ReviewService service = ReviewService.getInstance();
		ListResult listResult = service.getListResult(cp, ps);
		request.setAttribute("listResult", listResult);
		int size = listResult.getList().size();
		if(size == 0 && cp>1) {
			response.sendRedirect("review.kas?m=review&cp="+(cp-1));
		}else {
			String view = "review.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(view);
			rd.forward(request, response); 
		}
	}


}
