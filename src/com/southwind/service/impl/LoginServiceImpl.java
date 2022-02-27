package com.southwind.service.impl;

import com.southwind.entity.Student;
import com.southwind.repository.StudentRepository;
import com.southwind.repository.impl.StudentRepositoryImpl;
import com.southwind.service.LoginService;

public class LoginServiceImpl implements LoginService{
	
	private StudentRepository studentrepository=new StudentRepositoryImpl();
	
	@Override
	public Student login(String username, String password) {
		return studentrepository.login(username, password);
	}
	
}
