package com.praktikum.praktikum3;

import java.math.BigDecimal;
import java.util.Date;

/**
 *
 * @author Asus
 */
public class Produk {
    private Integer id;
    private String kode;
    private String nama;
    private BigDecimal harga;
    private Date terakhirUpdate;
    
    public Integer getId(){
        return id;
    }
    public void setId(Integer id){
        this.id = id;
    }
    
    public String getKode(){
        return kode;
    }
    public void setKode(String kode){
        this.kode = kode;
    }
    
    public String getNama(){
        return nama;
    }
    public void setNama(String nama){
        this.nama = nama;
    }
    
    public BigDecimal getHarga(){
        return harga;
    }
    public void setHarga(BigDecimal harga){
        this.harga = harga;
    }
    
    public Date getterakhirUpdate(){
        return terakhirUpdate;
    }
    public void setterakhirUpdate(Date terakhirUpdate){
        this.terakhirUpdate = terakhirUpdate;
    }
    
    
    
     
    
    
    
    
}
