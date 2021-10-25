package pricedisplay;

class PriceDisplay {
  public static void main(String[] args) {
    String item_name = "Coffee Machine";
    double price = 15.99;
    System.out.printf("The price of the %s is £%.2f", item_name, price);
  }

  public String getPriceLabel(String item_name, double price) {
    String output = String.format("The price of the %s is £%.2f", item_name, price);
    return output;
  }
}