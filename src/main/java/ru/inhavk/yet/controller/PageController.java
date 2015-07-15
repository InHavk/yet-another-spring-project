package ru.inhavk.yet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ru.inhavk.yet.entity.PageEntity;
import ru.inhavk.yet.service.PageService;

@Controller
public class PageController {
	
	@Autowired
	private PageService pageService;
	
	@RequestMapping("/")
	public String home(){
		return "redirect:/page/1";
	}
	
	@RequestMapping("/page/{pageId}")
	public String getPage(@PathVariable("pageId") Integer pageId, Model model){
		model.addAttribute("page", pageService.getPage(pageId));
		return "page";
	}
	
	@RequestMapping("/p/{pageUrl}")
	public String getPageByName(@PathVariable("pageUrl") String pageUrl, Model model){
		model.addAttribute("page", pageService.getPageByName(pageUrl));
		return "page";
	}
	
	@RequestMapping(value="/page/add", method=RequestMethod.POST)
	public String addPage(@ModelAttribute("page") PageEntity page, BindingResult result){
		pageService.addPage(page);
		return "redirect:/page/" + page.getId().toString();
	}
	
	@RequestMapping(value="/page/add", method=RequestMethod.GET)
	public String addPageForm(Model model){
		model.addAttribute("page", new PageEntity());
		return "add_page";
	}

}
