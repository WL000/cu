package com.wl.user.model;
/**
 * 名称:User
 * 功能:存放实体类,与数据库中的属性基本一致
 * */


public class User {
    private int user_id;
    private String user_name;
    private String sex;
    private String birth_place;
    private String clazz;
    private String user_no;
    private String address;

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirth_place() {
        return birth_place;
    }

    public void setBirth_place(String birth_place) {
        this.birth_place = birth_place;
    }

    public String getClazz() {
        return clazz;
    }

    public void setClazz(String clazz) {
        this.clazz = clazz;
    }

    public String getUser_no() {
        return user_no;
    }

    public void setUser_no(String user_no) {
        this.user_no = user_no;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    public String toString(){
        StringBuffer stringBuffer=new StringBuffer();
        stringBuffer.append("id=");
        stringBuffer.append(user_id);
        stringBuffer.append("\n");
        stringBuffer.append("name=");
        stringBuffer.append(user_name);
        stringBuffer.append("\n");
        stringBuffer.append("sex=");
        stringBuffer.append(sex);
        stringBuffer.append("\n");
        stringBuffer.append("birth_place=");
        stringBuffer.append(birth_place);
        stringBuffer.append("\n");
        stringBuffer.append("clazz=");
        stringBuffer.append(clazz);
        stringBuffer.append("\n");
        stringBuffer.append("user_no=");
        stringBuffer.append(user_no);
        stringBuffer.append("\n");
        stringBuffer.append("address=");
        stringBuffer.append(address);
        return stringBuffer.toString();
    }
}
