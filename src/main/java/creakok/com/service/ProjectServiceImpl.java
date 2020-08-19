package creakok.com.service;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Funding;
import creakok.com.mapper.ProjectMapper;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
public class ProjectServiceImpl implements ProjectService {
	@Autowired
	private ProjectMapper mapper;
	
	
	@Override
	public void writeFundingProject(long funding_index, String creator_name, String funding_subject,
			long funding_category_code, String funding_repre_pic, String funding_detail_pic, long funding_goal,
			long funding_amount, Date funding_wdate, Date funding_edate, long funding_people, long funding_like_number,
			String funding_keyword, String funding_option) {
		
		Funding funding = new Funding(-1, creator_name, funding_subject, funding_category_code, funding_repre_pic,
				funding_detail_pic, funding_goal, funding_amount, null, funding_edate, funding_people,funding_like_number, funding_keyword, 
				funding_option, null, -1, -1, null);

		int result = mapper.writeFundingProject(funding);
		/*
		if(result>0) {
			return true;
		}else {
			return false;
		}
		*/
	}

}
