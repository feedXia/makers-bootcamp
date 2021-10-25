package pricedisplay;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class PriceDisplayTest {
  @Test
  public void testPrintsCoffeMachineLabel() {
    PriceDisplay label = new PriceDisplay();
    assertEquals("The price of a Coffee Machine should equal £15.99",
        String.valueOf("The price of the Coffee Machine is £15.99"), label.getPriceLabel("Coffee Machine", 15.99));
  }
}