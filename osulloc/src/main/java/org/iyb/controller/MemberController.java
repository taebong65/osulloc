package org.iyb.controller;

import javax.servlet.http.HttpSession;
//import javax.swing.plaf.synth.SynthSeparatorUI;

import org.iyb.domain.MemberDTO;
import org.iyb.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("member")
public class MemberController {
	@Autowired
	private MemberService mservice;
	//�쉶�썝媛��엯 �솕硫� �씠�룞
	
	@GetMapping("member")
	public void write() {
		System.out.println("member/member");
	} 
	@PostMapping("member")
	public void Postmember(MemberDTO mdto) {
		// �쉶�썝媛��엯 �솕硫댁쓣 �넻�빐 �뼸�뼱吏� �뜲�씠�꽣 insert
		mservice.insert(mdto);
	}
	
	//濡쒓렇�씤 �솕硫� �씠�룞 
	@GetMapping("login")
	public void login() {
		System.out.println("member/login");
	} 
	// 濡쒓렇�씤 �솕硫댁쓣 �넻�빐 �뼸�뼱吏� �뜲�씠�꽣瑜� �솢�슜�븯�뿬 select
	
	@PostMapping("login")
	public String Postlogin(MemberDTO mdto,HttpSession session) {
		MemberDTO login=mservice.login(mdto);
		
		//MemberDTO�뿉 �엳�뒗 MemberDTO [id=abcd, password=1234, name=�젙�옄諛�]瑜� �꽭�뀡 �쁺�뿭�뿉 login�씠�씪�뒗 蹂��닔�뿉 ���옣
		// �꽭�뀡媛앹껜(session)�뿉       login蹂��닔�뿉, log媛믪쓣 ���옣(setAttribute)
		session.setAttribute("login", login);
		
		
		 // session.invalidate(); 濡쒓렇�븘�썐
		
		// session�쁺�뿭�뿉 login�씠�씪�뒗 蹂��닔�뿉 媛믪씠 �엳�쑝硫� 濡쒓렇�씤 �맂 梨꾨줈
		
		if(session.getAttribute("login")!=null) {
			
			//main�럹�씠吏�濡� �씠�룞 
			return "redirect:/page/mainpage";
			
		}else { //session �쁺�뿭�뿉 login�씠���뒓 蹂��닔�뿉 媛믪씠 �뾾�쑝硫�(null)
			//�떎�떆 濡쒓렇�씤 �븷 �닔 �엳寃� 濡쒓렇�씤 �럹�씠吏�濡� �씠�룞 
			
			return "redirect:/member/login";
		}
		// session�쁺�뿭�뿉 login�씠�씪�뒗 蹂��닔�뿉 媛믪씠 �뾾�쑝硫� (null)
		
		
	}
	
	
}
