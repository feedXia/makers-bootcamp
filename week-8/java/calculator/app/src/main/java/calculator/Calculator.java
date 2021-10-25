package calculator;

class Calculator {

  public static void main(String[] args) {
    Integer result = 2 + 2;
    System.out.printf("The result is %d \n", result);
  }

  public Integer add(Integer a, Integer b) {
    return a + b;
  }
}