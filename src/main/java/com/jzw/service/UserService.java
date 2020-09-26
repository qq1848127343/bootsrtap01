package com.jzw.service;

import com.jzw.vo.PageVo;
import com.jzw.vo.User;

import java.util.List;

public interface UserService {

    // 根据条件查询
    public PageVo<User> queryUserbyCond(User user, int page, int rows);

    // 根据条件查询
    public List<User> queryUserbyCond2(User user);

    public User queryUserbyid(int id);

    //添加
    public int tianJia(User user);

    //删除
    public int shanChu(int id);

    //修改
    public int xiuGai(User user);

    public User dl(User user);
}
