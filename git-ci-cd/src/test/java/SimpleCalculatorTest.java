import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.math.BigInteger;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

class SimpleCalculatorTest {

    private SimpleCalculator simpleCalculator;

    @BeforeEach
    public void init() {
        simpleCalculator = new SimpleCalculator();
    }

    @Test
    void addTest() {
        var result = simpleCalculator.add(BigInteger.TWO,  BigInteger.TWO);
        assertEquals(BigInteger.valueOf(4), result);
    }

    @Test
    void mulTest() {
        var result = simpleCalculator.mul(BigInteger.valueOf(5), BigInteger.valueOf(5));
        assertEquals(BigInteger.valueOf(25), result);
    }

    @Test
    void subTest() {
        var result = simpleCalculator.sub(BigInteger.valueOf(10), BigInteger.valueOf(8));
        assertEquals(BigInteger.valueOf(2), result);
    }

    @Test
    void divTest() {
        var result = simpleCalculator.div(BigInteger.valueOf(10), BigInteger.valueOf(2));
        assertEquals(BigInteger.valueOf(5), result);
    }

    @Test
    void divTest_when_Divider_Zero() {
        assertThrows(ArithmeticException.class, () -> simpleCalculator.div(BigInteger.valueOf(10), BigInteger.valueOf(0)));
    }
}