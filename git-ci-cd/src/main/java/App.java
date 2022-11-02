import java.util.Scanner;

public class App {

    public static void main(String[] args) {
        System.out.println("Simple Calculator");
        System.out.println();
        var calculator = new SimpleCalculator();
        var scanner = new Scanner(System.in);
        System.out.println("Enter two numbers: ");
        var a = scanner.nextBigInteger();
        var b = scanner.nextBigInteger();

        System.out.printf("Addition of %d and %d is: %d %n", a, b, calculator.add(a, b));
        System.out.printf("Multiplication of %d and %d is: %d %n", a, b, calculator.mul(a, b));
        System.out.printf("Subtraction of %d and %d is: %d %n", a, b, calculator.sub(a, b));
        System.out.printf("Division of %d and %d is: %d %n", a, b, calculator.div(a, b));


        scanner.close();
    }
}
