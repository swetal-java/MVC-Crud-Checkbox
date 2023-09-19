package com;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.orm.hibernate5.HibernateTemplate;

public class userDao {

	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void insertUser(userModel um) {
		this.hibernateTemplate.saveOrUpdate(um);
	}
	
	@Transactional 
	public void deleteUser(int id) {
		userModel u = this.hibernateTemplate.get(userModel.class, id);
		this.hibernateTemplate.delete(u);
	}
	
	public List<userModel> getalldata(){
		return this.hibernateTemplate.loadAll(userModel.class);
	}
	
	public userModel getDataById(int id) {
		userModel u = this.hibernateTemplate.get(userModel.class, id);
		return u;
	}
}
