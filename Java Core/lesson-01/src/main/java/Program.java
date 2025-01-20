public class Program {
    public static void main(String[] args) {
        Dog dog1 = new Dog();
        dog1.name = "ABC";
        dog1.age = 3;
        dog1.showInfo();

        int sum = dog1.sum(1, 99);
        System.out.println("sum = " + sum);

        Department department = new Department();
        department.id = 1;
        department.name = "Bảo vệ";
        System.out.println("department.name = " + department.name);
    }
}
