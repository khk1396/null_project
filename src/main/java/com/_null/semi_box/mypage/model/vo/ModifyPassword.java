package com._null.semi_box.mypage.model.vo;

public class ModifyPassword {
    private int userPk;
    private String currentPwd;
    private String newPwd;


    public ModifyPassword() {}

    public ModifyPassword(int userPk, String currentPwd, String newPwd) {
        this.userPk = userPk;
        this.currentPwd = currentPwd;
        this.newPwd = newPwd;
    }

    public int getUserPk() {
        return userPk;
    }

    public void setUserPk(int userPk) {
        this.userPk = userPk;
    }

    public String getCurrentPwd() {
        return currentPwd;
    }

    public void setCurrentPwd(String currentPwd) {
        this.currentPwd = currentPwd;
    }

    public String getNewPwd() {
        return newPwd;
    }

    public void setNewPwd(String newPwd) {
        this.newPwd = newPwd;
    }
}
