package salesdesign.dao;

import java.util.List;

import salesdesign.entity.Member;

public interface MemberDAO {

	public List<Member> getMembers();

	public void saveMember(Member theMember);

	public Member getMember(int theId);

	public void deleteMember(int theId);
}
