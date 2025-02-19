public class BasePlusComissionEmployee extends CommissionEmployee {
    public BasePlusComissionEmployee(String name, String mobile, int grossSales, double commissionRate, int baseSalary) {
        super(name, mobile, grossSales, commissionRate * 1.3, baseSalary);
    }
    @Override
    public String toString() {
        return "BasePlusCommissionEmployee 員工資料 \r\n" + 
        "姓名：" + super.getName() + "\r\n" +
        "手機號碼：" + super.getMobile();
    }
}
