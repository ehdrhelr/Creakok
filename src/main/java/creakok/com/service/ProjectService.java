package creakok.com.service;

import java.sql.Date;

public interface ProjectService {

	
	void writeFundingProject(long funding_index, String creator_name, String funding_subject,long funding_category_code,
			String funding_repre_pic,String funding_detail_pic, long funding_goal, long funding_amount, Date funding_wdate, Date funding_edate,
			long funding_people, long funding_like_number,String funding_keyword, String funding_option);
	//writeGoodsProject();
	
	//editProject
	//deleteProject
	
}
