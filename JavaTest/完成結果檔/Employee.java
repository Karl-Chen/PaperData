public class Employee extends Earning implements IInvoice, IPayable {
    private String name, mobile;

    public Employee(String name, String mobile) {
        this.setName(name);
        this.setMobile(mobile);
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Override
    public String toString() {
        // TODO Auto-generated method stub
        return "";
    }

    @Override
    public void getPaymentAmount() {
        
    }

    @Override
    public void getText() {
        
    }

    @Override
    void earnings() {
        
    }
}
