public class HourlyEmployee extends Employee{
    private int wage, hours;

    public HourlyEmployee(String name, String mobile, int wage, int hours) {
        super(name, mobile);
        setHours(hours);
        setWage(wage);
    }

    public int getWage() {
        return wage;
    }
    public void setWage(int wage) {
        if (wage > 0)
            this.wage = wage;
        else
            System.out.println("時薪不得小於等於0!!");
    }

    public int getHours() {
        return hours;
    }
    public void setHours(int hours) {
        if (hours >= 0)
            this.hours = hours;
        else
            System.out.println("工時不可能小於0!!");
    }

    @Override
    public String toString() {
        return "HourlyEmployee 員工基本資料\r\n" + 
        "姓名：" + this.getName() + "\r\n" +
        "手機號碼：" + this.getMobile();
    }

    @Override
    public void getText() {
        System.out.println("取得稅額：" + this.getHours() * this.getWage() * 0.05);
    }

    @Override
    void earnings() {
        System.out.println("員工未扣稅所得：" + this.getHours() * this.getWage());
    }

    @Override
    public void getPaymentAmount() {
        System.out.println("員工扣稅所得：" + ((this.getHours() * this.getWage()) - (this.getHours() * this.getWage() * 0.05)));
    }
}
