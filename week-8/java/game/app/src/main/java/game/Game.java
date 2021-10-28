package game;

public class Game {

  String word;
  int attempts = 10;

  public Game(String gameWord) {
    word = gameWord;
  }

  public static void main(String[] args) {
    Game guessingGame = new Game("MAKERS");
    System.out.println(guessingGame.getWordToGuess());
    System.out.printf("%d attempts remaining...\n", guessingGame.getRemainingAttempts());
  }

  public String getWordToGuess() {
    StringBuilder builder = new StringBuilder();
    for (int i = 0; i < this.word.length(); i++) {
      Character currentLetter = word.charAt(0);
      if (i == 0) {
        builder.append(currentLetter);
      } else {
        builder.append("_");
      }
    }
    return builder.toString();
  }

  public Integer getRemainingAttempts() {
    return this.attempts;
  }

}