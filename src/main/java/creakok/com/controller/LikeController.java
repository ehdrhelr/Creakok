package creakok.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import creakok.com.domain.LikeTable;
import creakok.com.service.LikeTableService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class LikeController {

	@Autowired
	private LikeTableService lts;
	
	@ResponseBody
	@PostMapping("clickLike.do")
	public String clickLike(LikeTable likeTable) {
		long tempL = lts.getLikeNumByTypeAndContentIndex(likeTable);
		log.info("#### tempL:"+tempL);

		if(tempL==0L) {
			lts.setLikeNum(likeTable);
		} else {
			lts.deleteLike(likeTable);
		}
		return Long.toString(tempL);
	}
}
