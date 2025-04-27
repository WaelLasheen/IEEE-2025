import 'dart:io';
import 'dart:math';
import 'words.dart'; // Assuming you have a 'words.dart' file with the 'word_list' variable.
import 'display.dart'; // Assuming you have a 'display.dart' file with the 'display_hangman' function.

String get_word() {
  Random random = Random();
  int size = word_list.length;
  int word_index = random.nextInt(size);
  return word_list[word_index].toUpperCase();
}

void play(String word) {
  List<String> unknown_word = [];

  // Initialize unknown_word with underscores
  for (int i = 0; i < word.length; i++) {
    unknown_word.add('_');
  }

  bool guessed = false;
  Set<String> guessed_letters = Set<String>();
  int tries = 9;

  print("Let's play 0^0");
  print(display_hangman(tries));
  print(unknown_word.join(' ')); // Join the list of letters with spaces

  while (!guessed && tries > 0) {
    stdout.write('Try to guess a letter in the word: ');
    String guess = stdin.readLineSync()!.toUpperCase();

    if (guess.length == 1 && guess.contains(RegExp(r'[A-Z]'))) {
      if (guessed_letters.contains(guess)) {
        print('You already guessed this letter ($guess)');
      } else if (!word.contains(guess)) {
        print('$guess is not in the word 😢');
        guessed_letters.add(guess);
        tries -= 1;
      } else if (word.contains(guess)) {
        print('Good try 🙂.');
        print('$guess is in the word 😁');
        for (int i = 0; i < word.length; i++) {
          if (word[i] == guess) {
            unknown_word[i] = guess;
          }
          if (!unknown_word.contains('_')) {
            guessed = true;
          }
        }
      }
    } else {
      print('Please, only enter one letter');
    }

    print(display_hangman(tries));
    print(unknown_word.join(' '));
  }

  if (guessed) {
    print('Congrats, You guessed the word!');
    print('You Win 🎉🎉');
  } else {
    print('Good try, but you lost.');
    print('The word was: $word');
    print('Good luck next time!');
  }
}

void main() {
  String word = get_word();
  play(word);
}
