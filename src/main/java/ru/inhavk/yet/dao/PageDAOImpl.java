package ru.inhavk.yet.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ru.inhavk.yet.entity.PageEntity;


@Repository
public class PageDAOImpl implements PageDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addPage(PageEntity page) {
		sessionFactory.getCurrentSession().save(page);
	}

	@Override
	public PageEntity getPage(Integer id) {
		return (PageEntity) sessionFactory.getCurrentSession().get(PageEntity.class, id);
	}

	@Override
	public void editPage(PageEntity page) {
		sessionFactory.getCurrentSession().update(page);
	}

	@Override
	public void removePage(Integer id) {
		// TODO Auto-generated method stub
	}

	@Override
	public PageEntity getPageByName(String url) {
		return (PageEntity) sessionFactory.getCurrentSession().createCriteria(PageEntity.class)
				.add(Restrictions.like("url", url))
				.uniqueResult();
	}

	@Override
	public List<PageEntity> listPages() {
		return sessionFactory.getCurrentSession().createCriteria(PageEntity.class).list();
	}

}
