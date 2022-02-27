package com.southwind.repository;

import com.southwind.entity.Student;

public interface StudentRepository {
	public Student login(String username,String password);
}
