
// import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

class Clock {
  public static void main(String[] args) {
    LocalTime time = LocalTime.now();
    System.out.printf("The time is " + time.format(DateTimeFormatter.ofPattern("HH:mm")));
  }
}

// Alternate Solutions
// class Clock {
// public static void main(String[] args) {
// LocalDateTime dateObject = LocalDateTime.now();
// DateTimeFormatter formatDate = DateTimeFormatter.ofPattern("HH:mm");
// String dtf = dateObject.format(formatDate);
// System.out.printf("The time is " + dtf);
// }
// }

// class Clock {
// public static void main(String[] args) {
// LocalTime time = LocalTime.now();
// String result = time.format(DateTimeFormatter.ofPattern("HH:mm"));
// System.out.printf("The time is %s \n", result);
// }
// }