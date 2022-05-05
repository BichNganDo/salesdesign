package salesdesign.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import salesdesign.dao.MemberDAO;
import salesdesign.entity.Member;

@Transactional
@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO memberDao;

	@Override
	public List<Member> getMembers() {
		return memberDao.getMembers();
	}

	@Override
	public void saveMember(Member theMember) {
		memberDao.saveMember(theMember);
	}

	@Override
	public Member getMember(int theId) {
		return memberDao.getMember(theId);
	}

	@Override
	public void deleteMember(int theId) {
		memberDao.deleteMember(theId);
		
	}

}
