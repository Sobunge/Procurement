package Business;


public class Supplier extends User{

private String companyName;

    public Supplier() {
    }

    public Supplier(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }


}
