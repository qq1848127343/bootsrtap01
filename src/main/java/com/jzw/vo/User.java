package com.jzw.vo;

import java.io.Serializable;

public class User implements Serializable {
    private Integer id;
    private String name;
    private String uname;
    private String pwd;
    private String sex;

    public User(Integer id, String name, String uname, String pwd, String sex) {
        this.id = id;
        this.name = name;
        this.uname = uname;
        this.pwd = pwd;
        this.sex = sex;
    }

    public User() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", uname='" + uname + '\'' +
                ", pwd='" + pwd + '\'' +
                ", sex='" + sex + '\'' +
                '}';
    }
}
