package com.ljsy.service.impl;

import com.ljsy.dao.EmpDao;
import com.ljsy.entity.Emp;
import com.ljsy.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional(rollbackFor = Exception.class)
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpDao empDao;

    /**
     * 所有员工
     *
     * @return
     */
    @Override
    public List<Emp> findAll() {
        return empDao.findAll();
    }

    /**
     * 添加员工
     *
     * @param emp
     */
    @Override
    public void save(Emp emp) {
        empDao.save(emp);
    }

    /**
     * 找员工
     *
     * @param id
     * @return
     */
    @Override
    public Emp findById(int id) {
        return empDao.findById(id);
    }

    /**
     * 更新员工
     *
     * @param emp
     */
    @Override
    public void update(Emp emp) {
        empDao.update(emp);
    }

    /**
     * 删除员工
     *
     * @param id
     */
    @Override
    public void delete(int id) {
        empDao.delete(id);
    }
}
