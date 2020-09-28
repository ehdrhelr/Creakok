package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Funding_payinfo;
import creakok.com.domain.Goods_Review;
import creakok.com.domain.LoginResult;
import creakok.com.domain.Member;
import creakok.com.domain.Member_category;
import creakok.com.domain.Nickname;
import creakok.com.domain.Order_Info;
import creakok.com.mapper.MemberMapper;
import creakok.com.vo.Goods_ReviewVo;
import creakok.com.vo.Member_FundingPayInfoVo;
import creakok.com.vo.Member_OrderInfoVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public int setMemberCreator(Member member) {
		member.setMember_category_code(Member_category.MEMBER_CREATOR);
		return memberMapper.updateMemberCategory(member);
	}

	@Override
	public int setMemberNormal(Member member) {
		member.setMember_category_code(Member_category.MEMBER_NORMAL);
		return memberMapper.updateMemberCategory(member);
	}
	
	
	@Override
	public String checkMemberOrigin(String member_email) {
		return memberMapper.selectMemberOrigin(member_email);
	}
	
	
	@Override
	public void signupSocialMemberS(Member member) {
		memberMapper.insertSocialMember(member);
		//log.info("###########"+Nickname.makeNickname(member.getMember_index()) );
		member.setMember_name(Nickname.makeNickname(member.getMember_index()) );
		memberMapper.updateNameByIndex(member);
	}

	@Override
	public void changeName(Member member) {
		memberMapper.updateNameByEmail(member);
	}
	
	@Override
	public Member checkEmailExist(String member_email) {
		Member member = memberMapper.selectByEmail(member_email);
		return member;
	}

	
	@Override
	public Member checkNameExist(String member_name) {
		Member member = memberMapper.selectByName(member_name);
		return member;
	}
	
	@Override
	public void secessionMemberS(String member_email) {
		memberMapper.deleteMember(member_email);
	}
	
	@Override
	public void signupMemberS(Member member) {
		memberMapper.insertMember(member);
	}

	@Override
	public void changeMemberPasswordS(String member_email, String new_password) {
		Member member = new Member();
		member.setMember_email(member_email);
		member.setMember_password(new_password);
		memberMapper.updatePassword(member);
	}
	
	@Override
	public Member getMemberInfoS(String member_email) {
		Member member = memberMapper.selectAllByEmail(member_email);
		member.setMember_password("");
		return member;
	}//end of getMemberInfo
	
	@Override
	public int compareMemberPasswordS(String member_email, String member_password) {
		Member member = memberMapper.selectAllByEmail(member_email);
		if(member!=null) { //���̵� �ִ� ���
			if(member.getMember_password().equals(member_password)) { 
				return LoginResult.LOGIN_OK; //�н����� �´� ���
			}else {
				return LoginResult.LOGIN_PASSWORD_FAIL; //�н����� Ʋ�� ���
			}
		} else { //���̵� ���� ���
			return LoginResult.LOGIN_EMAIL_NOT_EXIST;
		}
	}//end of compareMemberPassword
	
	@Override
	public List<Order_Info>selectOrderInfo(String member_email){
		return memberMapper.selectOrderInfo(member_email);
	}
	
	@Override
	public long selectOrderCount(String member_email) {
		return memberMapper.selectOrderCount(member_email);
	}
	
	@Override
	public void updateOrderTime(Order_Info order_info) {
		memberMapper.updateOrderTime(order_info);
	}
	
	@Override
	public Order_Info selectOneOrderInfo(long order_index) {
		return memberMapper.selectOneOrderInfo(order_index);
	}
	
	@Override
	public Member_OrderInfoVo selectPerPageOrder(int order_cp, int order_ps, String member_email) {
		long order_totalCount = memberMapper.selectOrderCount(member_email);
		
		Member_OrderInfoVo order_infoVo = new Member_OrderInfoVo(order_cp, order_totalCount, order_ps, member_email, null);
		List<Order_Info> order_list = memberMapper.selectPerPageOrder(order_infoVo);
		
		//문의 글 번호
		long order_list_number;
		for(int i=0; i<order_list.size(); i++) {
			order_list_number = order_totalCount - ((order_cp-1)*order_ps)-i;
			order_list.get(i).setOrder_list_number(order_list_number);
		}
		
		Member_OrderInfoVo order_infoVo2 = new Member_OrderInfoVo(order_cp, order_totalCount, order_ps, member_email, order_list); 
		order_infoVo2.setOrder_totalPageCount(order_infoVo2.getOrder_totalPageCount());
		
		//log.info("################# selectPerPageOrder order_cp: "+order_cp);
		//log.info("################# selectPerPageOrder order_ps: "+order_ps);
		//log.info("################# selectPerPageOrder member_email: "+member_email);
		//log.info("�ڡڡڡڡڡڡڡڡڡڡڡڡڡڡ� selectPerPageOrder order_list: "+order_list);
		
		
		return order_infoVo2;
	}
	//펀딩 주문내역 추가 시작
	@Override
	public List<Funding_payinfo> selectFundingPayInfo(String member_email) {
		return memberMapper.selectFundingPayInfo(member_email);
	}

	@Override
	public long selectFundingPayCount(String member_email) {
		return memberMapper.selectFundingPayCount(member_email);
	}

	@Override
	public void updateFundingPayTime(Order_Info order_info) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Funding_payinfo selectFundingPayInfo(long funding_payinfo_index) {
		return memberMapper.selectFundingPayInfo(funding_payinfo_index);
	}

	@Override
	public Member_FundingPayInfoVo selectPerPageFundingPay(int order_cp, int order_ps, String member_email) {
		long order_totalCount = memberMapper.selectFundingPayCount(member_email);
		Member_FundingPayInfoVo order_infoVo = new Member_FundingPayInfoVo(order_cp, order_totalCount, order_ps, member_email, null);
		List<Funding_payinfo> order_list = memberMapper.selectPerPageFundingPay(order_infoVo);
		
		Member_FundingPayInfoVo order_infoVo2 = new Member_FundingPayInfoVo(order_cp, order_totalCount, order_ps, member_email, order_list); 
		
		//order_infoVo2.setOrder_totalPageCount(order_infoVo2.getOrder_totalPageCount());

		log.info("################# selectPerPageOrder order_cp: "+order_cp);
		log.info("################# selectPerPageOrder order_ps: "+order_ps);
		log.info("################# selectPerPageOrder member_email: "+member_email);
		log.info("�ڡڡڡڡڡڡڡڡڡڡڡڡڡڡ� selectPerPageOrder order_list: "+order_list);
		
		
		return order_infoVo2;
		
		
		
		
		
		
		
		
	}
	//펀딩 주문내역 추가 
}




