package com.jzw.dao;

import com.jzw.vo.User;

import java.util.List;

public interface UserDao {

    // 根据条件查询
    public List<User> queryUserbyCond(User user);

    //根据条件查询记录数
    public int querycountUserbyCond(User user);

    public User queryuserbyid(int id);

    //添加
    public int tianJia(User user);

    //删除
    public int shanChu(int id);

    //修改
    public int xiuGai(User user);

    //登录
    public User dl(User user);
}
