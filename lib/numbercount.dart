// ignore_for_file: avoid_print

import 'dart:io';


import 'game.dart';

void main() {
  const maxRandom = 100;
  var game = Game();

  var isCorrect = false;
var rd = false;

  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');


  do {

    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }


    var result = game.doGuess(guess);


    var c = game.count;
    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else {
      print('║ ➜ $guess is CORRECT ❤, total guesses: $c');
      print('╟────────────────────────────────────────');
      print('║                 THE END                ');
      print('╚════════════════════════════════════════');
    rd = false;
do{
      stdout.write('Play again Y/N:');
      var ooo = stdin.readLineSync();
      if (ooo == "Y") {
        isCorrect = false;
        rd =true;
        print('╔════════════════════════════════════════');
        print('║            GUESS THE NUMBER            ');
        print('╟────────────────────────────────────────');
      } else if (ooo == "N") {
        exit(0);
      }
    }while(!rd);
    }

  } while (!isCorrect);


  }
