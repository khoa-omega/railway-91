// Class: Bản thiết kế
public class Dog {
    // 1. Thuộc tính (property)
    String name;
    int age;

    // 2. Phương thức (method)
    int sum(int a, int b) {
        return a + b;
    }

    void showInfo() {
        System.out.println("Thông tin chó");
        System.out.println("Tên: " + name);
        System.out.println("Tuổi: " + age);
    }
}
