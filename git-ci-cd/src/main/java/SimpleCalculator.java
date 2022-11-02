import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.math.BigInteger;

public class SimpleCalculator {

    private static final Logger LOGGER = LoggerFactory.getLogger(SimpleCalculator.class);

    public BigInteger add(BigInteger i, BigInteger j) {
        LOGGER.info(String.format("Addition %d * %d", i,  j));
        return i.add(j);
    }
    public BigInteger mul(BigInteger i, BigInteger j) {
        LOGGER.info(String.format("Multiplication %d * %d", i, j));
        return i.multiply(j);
    }
    public BigInteger sub(BigInteger i, BigInteger j) {
        LOGGER.info(String.format("Subtraction %d - %d", i, j));
        return i.subtract(j);
    }
    public BigInteger div(BigInteger i, BigInteger j) {
        LOGGER.info(String.format("Division %d / %d", i, j));
        return i.divide(j);
    }
}
