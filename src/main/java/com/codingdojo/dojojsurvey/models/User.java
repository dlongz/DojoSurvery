package com.codingdojo.dojojsurvey.models;

public class User {
	private String name;
	private String location;
	private String language;
	private String comments;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	public User(String name, String location, String language, String comments) {
		super();
		this.name = name;
		this.location = location;
		this.language = language;
		this.comments = comments;
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", location=" + location + ", language=" + language + ", comments=" + comments
				+ "]";
	}
	
	
}
