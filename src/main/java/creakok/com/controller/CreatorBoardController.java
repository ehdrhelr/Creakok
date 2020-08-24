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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Board;
import creakok.com.domain.Comment;
import creakok.com.domain.Creator;
import creakok.com.service.BoardCommentService;
import creakok.com.service.CreatorBoardService;
import creakok.com.vo.ListResult;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CreatorBoardController {
	@Autowired
	private CreatorBoardService creatorBoardService;
	@Autowired
	private BoardCommentService boardCommentService;
	
	@RequestMapping("board_page")
	public ModelAndView getListResult(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String board_cpStr = request.getParameter("board_cp");
		String board_psStr = request.getParameter("board_ps");
		String board_filterBy = request.getParameter("board_filterBy");
		String creator_name = request.getParameter("creator_name");		
		
		HttpSession session = request.getSession();
		
		//(1) cp 
		int board_cp = 1;
		if(board_cpStr == null) {
			Object board_cpObj = session.getAttribute("board_cp");
			if(board_cpObj != null) {
				board_cp = (Integer)board_cpObj;
			}
		}else {
			board_cpStr = board_cpStr.trim();
			board_cp = Integer.parseInt(board_cpStr);
		}
		session.setAttribute("board_cp", board_cp);
		
		//(2) ps 
		int board_ps = 15;
		/*
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
		*/
		session.setAttribute("board_ps", board_ps);
		
		String board_c_code = request.getParameter("board_c_code");
		String board_searchName = request.getParameter("board_searchName");
		
		if (board_c_code==null) { 
			String board_c_codeTemp = (String) session.getAttribute("board_c_code");
			if (board_c_codeTemp !=null) {
				board_c_code = board_c_codeTemp;
				log.info("@@@@@@@@@@@@"+ board_c_code);
			} else {
				board_c_code = "#####";
			}
		}
		session.setAttribute("board_c_code", board_c_code);
		
		if (board_searchName==null) { 
			String board_searchNameTemp = (String) session.getAttribute("board_searchName");
			if (board_searchNameTemp !=null) {
				board_searchName = board_searchNameTemp;
				log.info("@@@@@@@@@@@@"+ board_searchName);
			} else {
				board_searchName = "#####";
			}
		}
		session.setAttribute("board_searchName", board_searchName);
		
		if (board_filterBy==null) { 
			String board_filterByTemp = (String) session.getAttribute("board_filterBy");
			if (board_filterByTemp !=null) {
				board_filterBy = board_filterByTemp;
				log.info("@@@@@@@@@@@@"+ board_filterBy);
			} else {
				board_filterBy = "BOARD_INDEX";
			}
		}
		
		session.setAttribute("board_filterBy", board_filterBy);
		/*
		// �˻������� ����¡�ϱ�
		String searchName = request.getParameter("searchName");
		String searchNameTemp = (String)session.getAttribute("searchName");
		searchName = searchNameTemp;
		session.setAttribute("searchName", searchName);
		log.info("@@@@@@@@@@@@@@@@" + searchName);
		*/
		ListResult listResult = creatorBoardService.getListResultS(board_cp, board_ps, board_filterBy, creator_name);
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("community");
		mv.addObject("listResult", listResult);
		
		// ��� �޴��� ũ�������� �̸� ���
		List<Creator> creatorList = creatorBoardService.getCreatorName();
		mv.addObject("creatorList", creatorList);
		
		// ���� ������ ũ�������� ���� ��ȸ 
		Creator theCreator = creatorBoardService.getCreator(creator_name);
		//mv.addObject("theCreator", theCreator);		
		session.setAttribute("theCreator", theCreator);
		log.info("@@@@@@@@@@@@@@@@@@@@@@ theCreator.getCreator_banner_photo() : " + theCreator.getCreator_banner_photo());
		return mv;
	}
	
	@RequestMapping("board_content")
	public ModelAndView content(HttpServletRequest request, HttpServletResponse response, HttpSession session, 
			@RequestParam long board_index) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community_board_content");
		
		Board board = creatorBoardService.contentS(board_index);
		
		// ��� ��������
		List<Comment> commentList = (List<Comment>) boardCommentService.getComment(board_index);
		mv.addObject("commentList", commentList);
		
		Cookie[] cookies = request.getCookies();
		// ���ϱ� ���� ���ο� ��Ű
        Cookie viewCookie = null;
        
        // ��Ű�� ���� ��� 
        if (cookies != null && cookies.length > 0) {
            for (int i = 0; i < cookies.length; i++) {
                // Cookie�� name�� cookie + reviewNo�� ��ġ�ϴ� ��Ű�� viewCookie�� �־��� 
                if (cookies[i].getName().equals("cookie"+board_index)) { 
                    System.out.println("ó�� ��Ű�� ������ �� ����.");
                    viewCookie = cookies[i];
                }
            }
        }
        
        if (board != null) {
            System.out.println("System - �ش� ���������� �Ѿ");
            
            mv.addObject("board", board);
 
            // ���� viewCookie�� null�� ��� ��Ű�� �����ؼ� ��ȸ�� ���� ������ ó����.
            if (viewCookie == null) {    
                System.out.println("cookie ����");
                
                // ��Ű ����(�̸�, ��)
                Cookie newCookie = new Cookie("cookie"+board_index, "|" + board_index + "|");
                                
                // ��Ű �߰�
                response.addCookie(newCookie);
 
                // ��Ű�� �߰� ��Ű�� ��ȸ�� ������Ŵ
                boolean result = creatorBoardService.plusView(board_index);
                
                if(result) {
                    System.out.println("��ȸ�� ����");
                }else {
                    System.out.println("��ȸ�� ���� ����");
                }
            }
            // viewCookie�� null�� �ƴҰ�� ��Ű�� �����Ƿ� ��ȸ�� ���� ������ ó������ ����.
            else {
                System.out.println("cookie ����");
                
                // ��Ű �� �޾ƿ�.
                String value = viewCookie.getValue();
                
                System.out.println("cookie �� : " + value);
        
            }
         // �޴��� ũ�������� �̸� ���
    		List<Creator> creatorList = creatorBoardService.getCreatorName();
    		mv.addObject("creatorList", creatorList);
    		
            return mv;
        } 
        else {
        	// �޴��� ũ�������� �̸� ���
    		List<Creator> creatorList = creatorBoardService.getCreatorName();
    		mv.addObject("creatorList", creatorList);
    		
            return mv;
        }

	}
	
	@GetMapping("board_write")
	public ModelAndView boardWrite() {
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("community_board_write");
			
		// �޴��� ũ�������� �̸� ���
		List<Creator> creatorList = creatorBoardService.getCreatorName();
		mv.addObject("creatorList", creatorList);
			
		return mv;
	}
	
	@PostMapping("board_write")
	public String write(Board board) {
		creatorBoardService.insertBoard(board);
		return "redirect: /board_content?board_index="+ board.getBoard_index();
	}
	
	@GetMapping("board_update")
	public ModelAndView update(long board_index) {
		Board board = creatorBoardService.getBoard(board_index);
		ModelAndView mv = new ModelAndView("community_board_update", "board", board);
				
		return mv;
	}
	
	@PostMapping("board_update")
	public String update(Board board) {
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@ board.getBoard_subject : " + board.getBoard_subject());
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@ board.getBoard_content : " + board.getBoard_content());
		creatorBoardService.edit(board);
		return "redirect:board_content?board_index="+board.getBoard_index();
	}
	
	// ����
	@RequestMapping("board_delete")
	public String deleteBoard(@RequestParam long board_index) {
		creatorBoardService.deleteBoard(board_index);
		return "redirect:board_page";
	}

	// �˻� 
	@RequestMapping("board_search")
	public ModelAndView search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String board_cpStr = request.getParameter("board_cp");
		String board_psStr = request.getParameter("board_ps");
		String board_filterBy = request.getParameter("board_filterBy");
		
		HttpSession session = request.getSession();		
		
		//(1) cp 
		int board_cp = 1;
		if(board_cpStr == null) {
			Object board_cpObj = session.getAttribute("board_cp");
			if(board_cpObj != null) {
				board_cp = (Integer)board_cpObj;
			}
		}else {
			board_cpStr = board_cpStr.trim();
			board_cp = Integer.parseInt(board_cpStr);
		}
		session.setAttribute("board_cp", board_cp);
		
		//(2) ps 
		int board_ps = 3;
		if(board_psStr == null) {
			Object board_psObj = session.getAttribute("board_ps");
			if(board_psObj != null) {
				board_ps = (Integer)board_psObj;
			}
		}else {
			board_psStr = board_psStr.trim();
			int board_psParam = Integer.parseInt(board_psStr);
			
			Object board_psObj = session.getAttribute("board_ps");
			if(board_psObj != null) {
				int board_psSession = (Integer)board_psObj;
				if(board_psSession != board_psParam) {
					board_cp = 1;
					session.setAttribute("board_cp", board_cp);
				}
			}else {
				if(board_ps != board_psParam) {
					board_cp = 1;
					session.setAttribute("board_cp", board_cp);
				}
			}
			
			board_ps = board_psParam;
		}
		session.setAttribute("board_ps", board_ps);		
		
		if (board_filterBy==null) { 
			String board_filterByTemp = (String) session.getAttribute("board_filterBy");
			if (board_filterByTemp !=null) {
				board_filterBy = board_filterByTemp;
				log.info("@@@@@@@@@@@@"+ board_filterBy);
			} else {
				board_filterBy = "BOARD_INDEX";
			}
		} else {
			log.info("@@@@@@@@@@@@"+ board_filterBy);
		}
		session.setAttribute("filterBy", board_filterBy);
		
		String board_c_code = request.getParameter("board_c_code");
		String board_searchName = request.getParameter("board_searchName");
		
		if (board_c_code==null) { 
			String board_c_codeTemp = (String) session.getAttribute("board_c_code");
			if (board_c_codeTemp !=null) {
				board_c_code = board_c_codeTemp;
				log.info("@@@@@@@@@@@@"+ board_c_code);
				session.setAttribute("board_c_code", board_c_code);
			} else {
				board_c_code = "#####";
				session.setAttribute("board_c_code", board_c_code);
			}
		} else {
			log.info("@@@@@@@@@@@@"+ board_c_code);
		}
		session.setAttribute("board_c_code", board_c_code);
		
		if (board_searchName==null) { 
			String board_searchNameTemp = (String) session.getAttribute("board_searchName");
			log.info("@@@@@@@@@@@@"+ board_searchNameTemp);
			if (board_searchNameTemp !=null) {
				board_searchName = board_searchNameTemp;
				log.info("@@@@@@@@@@@@"+ board_searchName);
				session.setAttribute("board_searchName", board_searchName);
			} else {
				board_searchName = "#####";
				session.setAttribute("board_searchName", board_searchName);
			}
		} else {
			log.info("@@@@@@@@@@@@"+ board_searchName);
		}
		session.setAttribute("board_searchName", board_searchName);
		
		
		System.out.println("board_c_code: "+board_c_code+", board_searchName: "+board_searchName);
		
		ListResult listResult = creatorBoardService.getListResultBySearchS(board_cp, board_ps, board_filterBy, board_c_code, board_searchName);
		listResult.setBoard_searchName(board_searchName);
		listResult.setBoard_c_code(board_c_code);
		request.setAttribute("listResult", listResult);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("community");
		
		// ũ�������� �̸� ���
		List<Creator> creatorList = creatorBoardService.getCreatorName();
		mv.addObject("creatorList", creatorList);
		
		return  mv;
	}
	
	// ��� �ۼ�
	@RequestMapping("comment_write")
	public String writeComment(Comment comment) {
		log.info("@@@@@@@@@@@ comment.getBoard_index() :" + comment.getBoard_index());
		log.info("@@@@@@@@@@@ comment.getComment_content() :" + comment.getComment_content());
		log.info("@@@@@@@@@@@ comment.getComment_index() :" + comment.getComment_index());
		log.info("@@@@@@@@@@@ comment.getMember_email() :" + comment.getMember_email());
		log.info("@@@@@@@@@@@ comment.getMember_name() :" + comment.getMember_name());
		
		boardCommentService.writeComment(comment);

		return "redirect:board_content?board_index="+comment.getBoard_index();
	}
	
	// ��� ����
	@RequestMapping("comment_update")
	public ModelAndView updateComment(HttpServletRequest request) {
		String comment_indexStr = request.getParameter("comment_index");
		String comment_content = request.getParameter("comment_content");
		String board_indexStr = request.getParameter("board_index");
		
		long comment_index = Long.valueOf(comment_indexStr); 
		long board_index = Long.valueOf(board_indexStr);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:board_content?board_index="+board_index);
		boardCommentService.updateComment(comment_index, comment_content);
		
		// �޴��� ũ�������� �̸� ���
		List<Creator> creatorList = creatorBoardService.getCreatorName();
		mv.addObject("creatorList", creatorList);
		
		return mv;
	}
	// ��� ����
	@RequestMapping("comment_delete")
	public String deleteComment(long board_index, long comment_index) {
		log.info("###########" + board_index);
		log.info("###########" + comment_index);
		
		boardCommentService.deleteComment(comment_index);
		
		return "redirect:board_content?board_index="+board_index;
	}
	 
}
