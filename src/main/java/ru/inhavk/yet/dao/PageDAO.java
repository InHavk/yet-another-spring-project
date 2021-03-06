package ru.inhavk.yet.dao;

import java.util.List;

import ru.inhavk.yet.entity.PageEntity;

public interface PageDAO {
	
	public void addPage(PageEntity page);
	public PageEntity getPage(Integer id);
	public PageEntity getPageByName(String url);
	public void editPage(PageEntity page);
	public void removePage(Integer id);
	public List<PageEntity> listPages();

}
