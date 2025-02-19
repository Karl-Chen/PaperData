public class SalariedEmployee extends Employee {
    private int grossSales, baseSalary;
    private double commissionRate;
    
    public SalariedEmployee(String name, String mobile, int grossSales, double commissionRate, int baseSalary) {
        super(name, mobile);
        setBaseSalary(baseSalary);
        setGrossSales(grossSales);
        setCommissionRate(commissionRate);
    }

    public int getGrossSales() {
        return grossSales;
    }
    public void setGrossSales(int grossSales) {
        if (grossSales >= 0)
            this.grossSales = grossSales;
        else 
            System.out.println("績效不可能是負的!!");
    }

    public int getBaseSalary() {
        return baseSalary;
    }
    public void setBaseSalary(int baseSalary) {
        if (baseSalary > 0)
            this.baseSalary = baseSalary;
        else
            System.out.println("底薪不可能小於等於0!!");
    }

    public double getCommissionRate() {
        return commissionRate;
    }
    public void setCommissionRate(double commissionRate) {
        if (commissionRate >= 0)
            this.commissionRate = commissionRate;
        else
            System.out.println("獎金抽成率不可能小於0!!");
    }

    @Override
    public String toString() {
        return "SalariedEmployee 員工資料 \r\n" + 
        "姓名：" + super.getName() + "\r\n" +
        "手機號碼：" + super.getMobile();
    }

    @Override
    public void getText() {
        System.out.println("員工稅額為：" + (this.getGrossSales() * this.getCommissionRate() + this.getBaseSalary()) * 0.05);
    }

    @Override
    public void getPaymentAmount() {
        System.out.println("員工扣稅所得：" + ((this.getGrossSales() * this.getCommissionRate() + this.getBaseSalary()) - (this.getGrossSales() * this.getCommissionRate() + this.getBaseSalary()) * 0.05));
    }

    @Override
    void earnings() {
        System.out.println("員工未扣稅所得：" + (this.getGrossSales() * this.getCommissionRate() + this.getBaseSalary()));
    }
}
