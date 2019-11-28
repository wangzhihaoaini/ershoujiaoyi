package com.wzh.ershoujiaoyi.bean;

/**
 * Created with IntelliJ IDEA.
 * User: wzh
 * Date: 2019/4/27
 * Time: 14:28
 * Description: No Description
 */
public class Orderlist {
    private Integer id;
    private String wupinImage;
    private Integer wupinId;
    private Integer wupinNumber;
    private String sellUser;
    private String sellUserCollege;
    private String sellUserPhone;
    private String buyUser;
    private String addr;
    private String isDelivered;
    private String orderlistNumber;
    private Integer totalCost;
    private String date;
    private String title;

    public Orderlist(Integer id, Integer wupinId, String buyUser, String title) {
        this.id = id;
        this.wupinId = wupinId;
        this.buyUser = buyUser;
        this.title = title;
    }

    public Orderlist(String wupinImage, Integer wupinId, Integer wupinNumber, String sellUser, String sellUserCollege, String sellUserPhone, String buyUser, String addr, String isDelivered, String orderlistNumber, Integer totalCost, String date, String title) {
        this.wupinImage = wupinImage;
        this.wupinId = wupinId;
        this.wupinNumber = wupinNumber;
        this.sellUser = sellUser;
        this.sellUserCollege = sellUserCollege;
        this.sellUserPhone = sellUserPhone;
        this.buyUser = buyUser;
        this.addr = addr;
        this.isDelivered = isDelivered;
        this.orderlistNumber = orderlistNumber;
        this.totalCost = totalCost;
        this.date = date;
        this.title = title;
    }

    public Orderlist(Integer id, String wupinImage, Integer wupinId, Integer wupinNumber, String sellUser, String sellUserCollege, String sellUserPhone, String buyUser, String addr, String isDelivered, String orderlistNumber, Integer totalCost, String date, String title) {
        this.id = id;
        this.wupinImage = wupinImage;
        this.wupinId = wupinId;
        this.wupinNumber = wupinNumber;
        this.sellUser = sellUser;
        this.sellUserCollege = sellUserCollege;
        this.sellUserPhone = sellUserPhone;
        this.buyUser = buyUser;
        this.addr = addr;
        this.isDelivered = isDelivered;
        this.orderlistNumber = orderlistNumber;
        this.totalCost = totalCost;
        this.date = date;
        this.title = title;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getWupinImage() {
        return wupinImage;
    }

    public void setWupinImage(String wupinImage) {
        this.wupinImage = wupinImage;
    }

    public Integer getWupinId() {
        return wupinId;
    }

    public void setWupinId(Integer wupinId) {
        this.wupinId = wupinId;
    }

    public Integer getWupinNumber() {
        return wupinNumber;
    }

    public void setWupinNumber(Integer wupinNumber) {
        this.wupinNumber = wupinNumber;
    }

    public String getSellUser() {
        return sellUser;
    }

    public void setSellUser(String sellUser) {
        this.sellUser = sellUser;
    }

    public String getSellUserCollege() {
        return sellUserCollege;
    }

    public void setSellUserCollege(String sellUserCollege) {
        this.sellUserCollege = sellUserCollege;
    }

    public String getSellUserPhone() {
        return sellUserPhone;
    }

    public void setSellUserPhone(String sellUserPhone) {
        this.sellUserPhone = sellUserPhone;
    }

    public String getBuyUser() {
        return buyUser;
    }

    public void setBuyUser(String buyUser) {
        this.buyUser = buyUser;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getIsDelivered() {
        return isDelivered;
    }

    public void setIsDelivered(String isDelivered) {
        this.isDelivered = isDelivered;
    }

    public String getOrderlistNumber() {
        return orderlistNumber;
    }

    public void setOrderlistNumber(String orderlistNumber) {
        this.orderlistNumber = orderlistNumber;
    }

    public Integer getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(Integer totalCost) {
        this.totalCost = totalCost;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Orderlist{" +
                "id=" + id +
                ", wupinImage='" + wupinImage + '\'' +
                ", wupinId=" + wupinId +
                ", wupinNumber=" + wupinNumber +
                ", sellUser='" + sellUser + '\'' +
                ", sellUserCollege='" + sellUserCollege + '\'' +
                ", sellUserPhone='" + sellUserPhone + '\'' +
                ", buyUser='" + buyUser + '\'' +
                ", addr='" + addr + '\'' +
                ", isDelivered='" + isDelivered + '\'' +
                ", orderlistNumber='" + orderlistNumber + '\'' +
                ", totalCost=" + totalCost +
                ", date='" + date + '\'' +
                ", title='" + title + '\'' +
                '}';
    }
}
