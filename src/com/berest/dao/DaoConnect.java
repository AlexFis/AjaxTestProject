package com.berest.dao;

import com.berest.entities.Student;

import java.util.List;

public interface DaoConnect {
    void connectDB();
    void disconnectDB();
    List<Student> showStudent(String name);
}
