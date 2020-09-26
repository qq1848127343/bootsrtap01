package com.jzw.controller;

import com.alibaba.fastjson.JSONObject;
import com.jzw.service.UserService;
import com.jzw.vo.User;
import com.jzw.vo.PageVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/addUser.action",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String addUser(User user) {
        int num = userService.tianJia(user);
        if(num==1){
            return "添加成功";
        }

        return "添加失败";

    }

    @RequestMapping(value = "/queryUserbycond2.action",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String querybycond2(User user,
                               @RequestParam(value = "page",defaultValue = "1") int page,
                               @RequestParam(value = "rows",defaultValue = "3") int rows) {
        PageVo<User> list= userService.queryUserbyCond(user, page, rows);
        return JSONObject.toJSONString(list);

    }

    //删除
    @RequestMapping(value = "/delUser.action",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String delUser(@RequestParam(value = "ids")String ids) {
        String[] strs=ids.split(",");
        int num=0;
        for(int i=0;i<strs.length;i++){
            num =num+ userService.shanChu(Integer.parseInt(strs[i]));
        }

        if(num==strs.length){
            return "删除成功";
        }

        return "删除失败";

    }

    //修改
    @RequestMapping(value = "/updateUser.action",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String updateUser(User user) {
        int num = userService.xiuGai(user);
        if(num==1){
            return "修改成功";
        }

        return "修改失败";

    }

    @RequestMapping("/queryUserbyid.action")
    @ResponseBody
    public String queryUserByid(int id) {
        return JSONObject.toJSONString(userService.queryUserbyid(id));
    }

    @RequestMapping(value ="/dl.action",produces = "text/json;charset=utf-8")
    @ResponseBody
    public String dl(User user) {
        User user1=userService.dl(user);
        if(user1!=null){
            return "登录成功";
        }
        return "登录失败";
    }
}
