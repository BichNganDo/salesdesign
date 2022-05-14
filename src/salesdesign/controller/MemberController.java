package salesdesign.controller;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import salesdesign.entity.Member;
import salesdesign.service.MemberService;


@Controller
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("list")
	public String listCustomers(Model theModel) {
		
		List<Member> theMembers = memberService.getMembers();
		
		theModel.addAttribute("members", theMembers);
		
		return "members/manage-member";
	}
	
	@GetMapping("add-member")
	public String showFormAddMember(Model theModel) {
		Member theMember = new Member();
		theModel.addAttribute("member", theMember);
		return "members/form-add";
	}
	
	@PostMapping("/saveMember")
	public String saveMember(@ModelAttribute("member") Member theMember){
		String fullName = theMember.getFullName().trim();
		String email = theMember.getEmail().trim();
		String phone = theMember.getPhone().trim();
		int title = theMember.getTitle();
		
		if(StringUtils.isNotEmpty(fullName) && StringUtils.isNotEmpty(email) && StringUtils.isNotEmpty(phone) && title > 0) {
			memberService.saveMember(theMember);
			return "redirect:/member/list";
		}
		return "redirect:/member/form-add";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("memberId") int theId, Model theModel) {
		
		// get the customer in db
		Member theMember = memberService.getMember(theId);
		
		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("member", theMember);
		
		// send over to our form
		return "members/form-add";
	}
	
	@GetMapping("/delete")
	public String deleteMember(@RequestParam("memberId") int theId){
		
		// save the customer using our service
		memberService.deleteMember(theId);
		
		return "redirect:/member/list";
		
	}

}
