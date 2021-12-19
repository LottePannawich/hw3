import 'dart:math';

class Game {
  static const maxRandom = 100;
  int? _answer;

  int guessCount = 0;

  Game() {
    var r = Random();
    _answer = r.nextInt(maxRandom) + 1;
  }

  int doGuess(int num) {
    if (num > _answer!) {
      guessCount++;
      return 1;
    } else if (num < _answer!) {
      guessCount++;
      return -1;
    } else {
      guessCount++;
      return 0;
    }
  }
}