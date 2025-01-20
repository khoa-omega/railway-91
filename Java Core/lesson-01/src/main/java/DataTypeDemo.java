import java.time.LocalDate;

public class DataTypeDemo {
    public static void main(String[] args) {
        // Kiểu số nguyên
        // byte, short, int, long
        // Giá trị mặc định: 0
        int age = 25;
        System.out.println("age = " + age);

        // Kiểu số thực
        // float, double
        // Giá trị mặc định: 0.0
        float score = 8.75f;
        System.out.println("score = " + score);

        // Kiểu char
        // Giá trị mặc định: \u0000
        char c = 'A';
        System.out.println("c = " + c);

        // Kiểu boolean
        // Giá trị mặc định: false
        boolean isLoading = true;
        System.out.println("isLoading = " + isLoading);

        // Kiểu enum
        Gender gender = Gender.FEMALE;
        System.out.println("gender = " + gender);

        // Kiểu array
        int[] numbers = {1, 3, 5, 7, 9};
        // Chỉ số của array bắt đầu từ 0
        System.out.println("numbers[0] = " + numbers[0]);
        // length
        System.out.println("numbers.length = " + numbers.length);
        // Phần tử cuối cùng
        int lastIndex = numbers.length - 1;
        System.out.println("numbers[" + lastIndex + "] = " + numbers[lastIndex]);

        // Kiểu String
        String s = "Nguyễn Văn Khoa";
        System.out.println("s = " + s);

        // Kiểu thời gian
        // LocalDate, LocalTime, LocalDateTime
        LocalDate today = LocalDate.now();
        System.out.println("today = " + today);
        LocalDate date = LocalDate.of(2003, 11, 16);
        System.out.println("date = " + date);
    }
}
