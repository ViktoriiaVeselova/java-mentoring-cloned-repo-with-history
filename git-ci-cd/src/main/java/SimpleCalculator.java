import java.math.BigInteger;

public class SimpleCalculator {

    public BigInteger add(BigInteger i, BigInteger j) {
        return i.add(j);
    }
    public BigInteger mul(BigInteger i, BigInteger j) {
        return i.multiply(j);
    }
    public BigInteger sub(BigInteger i, BigInteger j) {
        return i.subtract(j);
    }
    public BigInteger div(BigInteger i, BigInteger j) {
        return i.divide(j);
    }
}
