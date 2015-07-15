package ru.inhavk.yet.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pages")
public class PageEntity {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name="url")
	private String url;
	
	@Column(name="name")
	private String name;
	
	@Column(name="content")
	private String content;
	
	public Integer getId(){
		return id;
	}
	
	public String getName(){
		return name;
	}
	
	public String getContent(){
		return content;
	}
	
	public String getUrl() {
		return url;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	public void setContent(String content){
		this.content = content;
	}
	
	public void setUrl(String url) {
		this.url = url;
	}

}
