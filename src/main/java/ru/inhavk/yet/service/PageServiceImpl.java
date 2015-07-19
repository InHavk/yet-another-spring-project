package ru.inhavk.yet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ru.inhavk.yet.dao.PageDAO;
import ru.inhavk.yet.entity.PageEntity;

@Service
public class PageServiceImpl implements PageService {
	
	@Autowired
	private PageDAO pageDAO;

	@Transactional
	public void addPage(PageEntity page) {
		pageDAO.addPage(page);
	}

	@Transactional
	public PageEntity getPage(Integer id) {
		return pageDAO.getPage(id);
	}

	@Transactional
	public void editPage(PageEntity page) {
		pageDAO.editPage(page);
	}

	@Transactional
	public void removePage(Integer id) {
		pageDAO.removePage(id);
	}

	@Override
	public PageEntity getPageByName(String url) {
		return pageDAO.getPageByName(url);
	}

	@Override
	public List<PageEntity> listPages() {
		return pageDAO.listPages();
	}

}
