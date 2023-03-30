
package Business;

import java.io.Serializable;

public class Bid implements Serializable{
    
    private int Id;
    private String tenderNumber;
    private int amount;
    private String companyname;
    private String username;
    private String status;

    public Bid() {
    }

    public Bid(String tenderNumber, int amount, String username,String status) {
        this.tenderNumber = tenderNumber;
        this.amount = amount;
        this.username = username;
        this.status = status;
    }

    public Bid(int Id, String tenderNumber, String companyname, int amount, String status) {
        this.Id = Id;
        this.tenderNumber = tenderNumber;
        this.companyname = companyname;
        this.amount = amount;
        this.status = status;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    
    public String getTenderNumber() {
        return tenderNumber;
    }

    public void setTenderNumber(String tenderNumber) {
        this.tenderNumber = tenderNumber;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

   
}
