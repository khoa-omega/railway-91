public class ContinueDemo {
    public static void main(String[] args) {
        // Lặp phần tử tiếp theo ngay lập tức
        for (int i = 1; i < 10; i++) {
            if (i == 3) {
                continue;
            }
            System.out.println(i);
        }
    }
}
