public class FizzBuzz {
  public String play(Integer number) {
    // Integer otherNumber = number - 50;

    if (this.isDivisibleBy(15, number)) { // .this here refers to an instance of the FizzBuzz class. can be removed &
                                          // still works as will implicitly assume method isDivisibleBy is applied to
                                          // instacne of FizzBuzz class
      return "FizzBuzz";
    } else if (this.isDivisibleBy(5, number)) {
      return "Buzz";
    } else if (this.isDivisibleBy(3, number)) {
      return "Fizz";
    } else {
      return number.toString();
    }
  }

  public Boolean isDivisibleBy(Integer divisor, Integer number) {
    return number % divisor == 0;
  }

  public static void main(String[] args) {
    FizzBuzz fizzbuzzInstance = new FizzBuzz();

    for (int i = 1; i <= 100; i++) {
      System.out.println(fizzbuzzInstance.play(i));
    }
  }

  @Override
  public String toString() {
    return "FizzBuzz []";
  }
}