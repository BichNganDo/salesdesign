package salesdesign.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import salesdesign.entity.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Member> getMembers() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// create a query ... sort by last name
		Query<Member> theQuery = currentSession.createQuery("FROM Member", Member.class);
		
		// execute query and get result list
		List<Member> members = theQuery.getResultList();
		
		return members;
	}

	@Override
	public void saveMember(Member theMember) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save/update the customer ...
		currentSession.saveOrUpdate(theMember);

	}

	@Override
	public Member getMember(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// now read from db using the primary key
		Member theMember = currentSession.get(Member.class, theId);
		
		return theMember;
	}

	@Override
	public void deleteMember(int theId) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// delete object with primary key
		Query theQuery = currentSession.createQuery("delete FROM Member WHERE id=:memberId");
		theQuery.setParameter("memberId", theId);
		
		theQuery.executeUpdate();
		
	}

}
