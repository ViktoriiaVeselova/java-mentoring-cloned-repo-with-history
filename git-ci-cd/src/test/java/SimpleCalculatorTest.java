import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class SimpleCalculatorTest {

    private SimpleCalculator simpleCalculator;

    @BeforeEach
    public void init() {
        simpleCalculator = new SimpleCalculator();
    }

    @Test
    void addTest() {
        var result = simpleCalculator.add(2, 2);
        assertEquals(4, result);
    }

    @Test
    void mulTest() {
        var result = simpleCalculator.mul(5, 5);
        assertEquals(25, result);
    }

    @Test
    void subTest() {
        var result = simpleCalculator.sub(10, 8);
        assertEquals(2, result);
    }

    @Test
    void divTest() {
        var result = simpleCalculator.div(10, 2);
        assertEquals(5, result);
    }

    @Test
    void divTest_when_Divider_Zero() {
        var result = simpleCalculator.div(10, 0);
        assertEquals(0, result);
    }
}