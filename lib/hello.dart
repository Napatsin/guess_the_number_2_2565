// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

void main() {
  print('╔══════════════════════════════════════════════════');
  print('║              GUESS THE NUMBER                    ');
  print('║──────────────────────────────────────────────────');
  var r = Random();
  var answer = r.nextInt(100) + 1;
  var isCorrect = false;

  do {
    stdout.write('║  Guess the number between 1 and 100 : ');

    var input = stdin.readLineSync();

    if (input == null) {
      return;
    }

    var guess = int.tryParse(input);

    if (guess == null) {
      continue;
    }
    count += 1;
    isCorrect = doGuess(guess, answer);
  } while (!isCorrect);
}

var count = 0;

bool doGuess(int guess, int answer) {
  if (guess == answer) {
    print('║  ☛ $guess is CORRECT ✔, total guesses: $count ♬');
    print('║──────────────────────────────────────────────────');
    print('║                    THE END                       ');
    print('╚══════════════════════════════════════════════════');
    return true;
  } else if (guess > answer) {
    print('║  ☛ $guess is TOO HIGH! ▲');
    print('║──────────────────────────────────────────────────');
    return false;
  } else {
    print('║  ☛ $guess is TOO LOW! ▼');
    print('║──────────────────────────────────────────────────');
    return false;
  }
}