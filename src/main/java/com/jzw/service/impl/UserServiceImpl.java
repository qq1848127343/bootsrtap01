package com.jzw.service.impl;

import com.github.pagehelper.PageHelper;
import com.jzw.dao.UserDao;
import com.jzw.service.UserService;
import com.jzw.vo.PageVo;
import com.jzw.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public PageVo<User> queryUserbyCond(User user, int page, int rows) {
        PageVo<User> pageVo = new PageVo<>();
        //放在 查询代码的前面
        PageHelper.startPage(page,rows);
        pageVo.setRows(userDao.queryUserbyCond(user));

        pageVo.setTotal(userDao.querycountUserbyCond(user));

        return pageVo;
    }

    @Override
    public List<User> queryUserbyCond2(User user) {
        return userDao.queryUserbyCond(user);
    }

    @Override
    public User queryUserbyid(int id) {
        return userDao.queryuserbyid(id);
    }

    @Override
    public int tianJia(User user) {
        return userDao.tianJia(user);
    }

    @Override
    public int shanChu(int id) {
        return userDao.shanChu(id);
    }

    @Override
    public int xiuGai(User user) {
        return userDao.xiuGai(user);
    }

    @Override
    public User dl(User user) {
        return userDao.dl(user);
    }
}
