package game;

class Game {

  String word;

  public Game(String gameWord) {
    // word = "MAKERS";
    word = gameWord;
  }

  public static void main(String[] args) {
    // String result = "M_____";
    Game game = new Game("MAKERS");
    char firstLetter = game.word.charAt(0);
    System.out.println(firstLetter);
    // System.out.printf("%s\n", result);
  }

  public String getWordToGuess() {
    StringBuilder builder = new StringBuilder();
    for (int i = 0; i == this.word.length(); i++) {
      Character currentLetter = word.charAt(0);
      if (i == 0) {
        builder.append(currentLetter);
      } else {
        builder.append("_");
      }
    }
  }

}