
package com.mycompany.gems_store.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length=10,name="user_Id")
    private int userId;
    @Column(length=100,name="user_Name")
    private String userName;
    @Column(length=100,name="user_Email")
    private String userEmail;
    @Column(length=100,name="user_Password")
    private String userPassword;
    @Column(length=12,name="user_Phone")
    private String userPhone;
    @Column(length=1500,name="user_Pic")
    private String userPic;
    @Column(length=1500,name="user_Address")
    private String userAdress;
    
    @Column(name="user_type")
    private String userType;

    public User(int userId, String userName, String userEmail, String userPassword, String userPhone, String userPic, String userAdress,String userType) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userAdress = userAdress;
        this.userType= userType;
    }

    public User(String userName, String userEmail, String userPassword, String userPhone, String userPic, String userAdress,String userType) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userAdress = userAdress;
        this.userType=userType;
    }

    public User() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserPic() {
        return userPic;
    }

    public void setUserPic(String userPic) {
        this.userPic = userPic;
    }

    public String getUserAdress() {
        return userAdress;
    }

    public void setUserAdress(String userAdress) {
        this.userAdress = userAdress;
    }
    
    public String getUserType(){
        return userType;
    }
    public void setUserType(String UserType){
        this.userType=userType;
    }
    
    
    
    
}
