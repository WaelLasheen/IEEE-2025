import 'dart:io';
import 'hangman.dart';

void main(List<String> args) {
  String word = get_word();
  play(word);
  stdout.write('do you want to play again ?  Y/N  : ');
  String again = stdin.readLineSync()!.toUpperCase();
  while (again == "Y") {
    String word = get_word();
    play(word);
    stdout.write('do you want to play again ?  Y/N  : ');
    again = stdin.readLineSync()!.toUpperCase();
  }
}
