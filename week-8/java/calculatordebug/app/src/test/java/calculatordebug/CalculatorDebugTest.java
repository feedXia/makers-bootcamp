package calculatordebug;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class CalculatorDebugTest {
  @Test
  public void testAddsTwoAndTwo() {
    CalculatorDebug calc = new CalculatorDebug();
    assertEquals("2 + 2 should equal 4", Integer.valueOf(4), calc.add(2, 2));
  }
}
