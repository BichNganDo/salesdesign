package salesdesign.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import salesdesign.entity.Member;
import salesdesign.service.MemberService;

@Controller
public class ClientMemberController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/home/member")
	public String showHomeMemberPage(Model theModel) {
		
		List<Member> members = memberService.getMembers();
		theModel.addAttribute("members", members);
		
		return "clients/member-page";
	}
	
	
	
}
