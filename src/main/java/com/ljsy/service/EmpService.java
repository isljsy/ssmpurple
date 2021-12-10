package com.ljsy.service;

import com.ljsy.entity.Emp;

import java.util.List;

public interface EmpService {
    /**
     * 所有员工
     * @return
     */
    List<Emp> findAll();


    /**
     * 添加员工
     * @param emp
     */
    void save(Emp emp);

    /**
     * 找员工
     * @param id
     * @return
     */
    Emp findById(int id);

    /**
     * 更新员工
     * @param emp
     */
    void update(Emp emp);

    /**
     * 删除员工
     * @param id
     */
    void delete(int id);
}
