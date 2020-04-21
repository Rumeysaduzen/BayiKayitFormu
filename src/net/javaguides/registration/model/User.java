package net.javaguides.registration.model;




public class User {



    private int id;
    private String name;
    private String surname;
    private String tc;
    private String address;
    private String phone;
    private String email;
    private String que1;
    private String que2;
    private String que3;
    private String que4;
    private String note;


    public User(String name, String surname, String tc, String address, String phone, String email, String que1, String que2, String que3, String que4, String note) {
       super();
        this.name = name;
        this.surname = surname;
        this.tc = tc;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.que1 = que1;
        this.que2 = que2;
        this.que3 = que3;
        this.que4 = que4;
        this.note = note;
    }


    public User(int id, String name, String surname, String tc, String address, String phone, String email, String que1, String que2, String que3, String que4, String note) {
        super();
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.tc = tc;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.que1 = que1;
        this.que2 = que2;
        this.que3 = que3;
        this.que4 = que4;
        this.note = note;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public  String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public  String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public  String getTc() {
        return tc;
    }

    public void setTc(String tc) {
        this.tc = tc;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public  String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public String getQue1() {
        return que1;
    }

    public void setQue1(String que1) {
        this.que1 = que1;
    }

    public  String getQue2() {
        return que2;
    }

    public void setQue2(String que2) {
        this.que2 = que2;
    }

    public  String getQue3() {
        return que3;
    }

    public void setQue3(String que3) {
        this.que3 = que3;
    }

    public  String getQue4() {
        return que4;
    }

    public void setQue4(String que4) {
        this.que4 = que4;
    }

    public  String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

}