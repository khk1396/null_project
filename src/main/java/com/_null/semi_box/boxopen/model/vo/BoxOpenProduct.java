package com._null.semi_box.boxopen.model.vo;

import java.sql.Date;

public class BoxOpenProduct {
    private String productId;
    private int userPk;
    private int productSn; // ← 여기 String → int로 변경
    private Date getDate;
    private String diary;
    private String fortune;
    private String status;

    public BoxOpenProduct() {}

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getUserPk() {
        return userPk;
    }

    public void setUserPk(int userPk) {
        this.userPk = userPk;
    }

    public int getProductSn() {
        return productSn;
    }

    public void setProductSn(int productSn) {
        this.productSn = productSn;
    }

    public Date getGetDate() {
        return getDate;
    }

    public void setGetDate(Date getDate) {
        this.getDate = getDate;
    }

    public String getDiary() {
        return diary;
    }

    public void setDiary(String diary) {
        this.diary = diary;
    }

    public String getFortune() {
        return fortune;
    }

    public void setFortune(String fortune) {
        this.fortune = fortune;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "BoxOpenProduct{" +
                "productId='" + productId + '\'' +
                ", userPk=" + userPk +
                ", productSn=" + productSn +
                ", getDate=" + getDate +
                ", diary='" + diary + '\'' +
                ", fortune='" + fortune + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
