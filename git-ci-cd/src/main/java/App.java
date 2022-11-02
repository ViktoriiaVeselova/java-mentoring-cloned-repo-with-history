import java.util.Scanner;

public class App {

    public static void main(String[] args) {
        System.out.println("Simple Calculator");
        System.out.println();
        SimpleCalculator cal = new SimpleCalculator();
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter two numbers: ");
        int a, b;
        a = sc.nextInt();
        b = sc.nextInt();
        System.out.printf("Addition of %d and %d is: %d ", a, b, cal.add(a, b));
        System.out.printf("Multiplication of %d and %d is: %d ", a, b, cal.mul(a, b));
        System.out.printf("Subtraction of %d and %d is: %d ", a, b, cal.sub(a, b));
        System.out.printf("Division of %d and %d is: %f ", a, b, cal.div(a, b));

        sc.close();
    }
}
