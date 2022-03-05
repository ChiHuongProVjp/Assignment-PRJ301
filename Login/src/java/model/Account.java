/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Sap-lap
 */
public class Account {
    private String taikhoan;
    private String matkhau;
    private String tentaikhoan;

    public Account() {
    }

    public Account(String taikhoan, String matkhau, String tentaikhoan) {
        this.taikhoan = taikhoan;
        this.matkhau = matkhau;
        this.tentaikhoan = tentaikhoan;
    }

    public String getTaikhoan() {
        return taikhoan;
    }

    public void setTaikhoan(String taikhoan) {
        this.taikhoan = taikhoan;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getTentaikhoan() {
        return tentaikhoan;
    }

    public void setTentaikhoan(String tentaikhoan) {
        this.tentaikhoan = tentaikhoan;
    }
    
    
}
