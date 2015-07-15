package ru.inhavk.yet.service;

import ru.inhavk.yet.entity.PageEntity;

public interface PageService {
	
	public void addPage(PageEntity page);
	public PageEntity getPage(Integer id);
	public PageEntity getPageByName(String url);
	public void editPage(PageEntity page);
	public void removePage(Integer id);

}
