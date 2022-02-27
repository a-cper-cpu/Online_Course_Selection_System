package com.southwind.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.southwind.entity.Student;
import com.southwind.service.LoginService;
import com.southwind.service.impl.LoginServiceImpl;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet{
	
	private LoginService loginservice=new LoginServiceImpl();
	
	/**
	 * �����¼��ҵ���߼�
	 * @author ��׿
	 * */
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=req.getParameter("uname");
		String password=req.getParameter("upwd");
		String identity=req.getParameter("login-identity");
		Student student=loginservice.login(username, password);
		if(student != null) {
			System.out.println("��¼�ɹ���");
		}else {
			System.out.println("��¼ʧ�ܣ�");
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username=req.getParameter("uname");
		String password=req.getParameter("upwd");
		String identity=req.getParameter("login-identity");
		Student student=loginservice.login(username, password);
		
		int i=0;
		
		if(student != null) {
			System.out.println("��¼�ɹ���");
		}else {
			System.out.println("��¼ʧ�ܣ�");
		}
	}
	
	
}
