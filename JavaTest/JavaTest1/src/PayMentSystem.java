public class PayMentSystem {
    public static void main(String[] args) {
        Employee ep1 = new HourlyEmployee("王打工", "0912345600", 150, 40);
        System.out.println(ep1.toString());
        ep1.earnings();
        ep1.getText();
        ep1.getPaymentAmount();
        System.out.println("=================================================");
        
        Employee ep2 = new SalariedEmployee("王業務", "0912345601", 200000, 0.11, 26000);
        System.out.println(ep2.toString());
        ep2.earnings();
        ep2.getText();
        ep2.getPaymentAmount();
        System.out.println("=================================================");

        Employee ep3 = new CommissionEmployee("王抽成", "0912345602", 300000, 0.14, 26000);
        System.out.println(ep3.toString());
        ep3.earnings();
        ep3.getText();
        ep3.getPaymentAmount();
        System.out.println("=================================================");


        Employee ep4 = new BasePlusComissionEmployee("王高成", "0912345603", 300000, 0.14, 26000);
        System.out.println(ep4.toString());
        ep4.earnings();
        ep4.getText();
        ep4.getPaymentAmount();
        System.out.println("=================================================");
    }
}
