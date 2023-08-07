//Rokc, paper and scissors game
import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
  //variable score de los juagadores
  var userWins = 0;
  var computerWins = 0;

  //opciones jugadores
  var options = [
    'rock',
    'paper',
    'scissors',
  ];

  //ciclo de juego
  while (true) {
    print('Choose one option, $options o write "Exit" to end the game');
    var userOption = stdin.readLineSync()?.toLowerCase();

    if (userOption.toString() == 'exit') {
      print('See you soon');
      break;
    } else if (!options.contains(userOption)) {
      print('Error.. Choose a valid option');
      continue;
    }

    Random random = Random();

    var randomNum = random.nextInt(2);
    var computerOption = options[randomNum];

    print('Computer has choosed $computerOption');

    if (userOption == 'rock' && computerOption == 'scissors') {
      print('You have won');
      userWins++;
    } else if (userOption == 'paper' && computerOption == 'rock') {
      print('You have won');
      userWins++;
    } else if (userOption == 'scissors' && computerOption == 'paper') {
      print('You have won');
      userWins++;
    } else if (userOption == computerOption) {
      print("It's a tie");
    } else {
      print('The computer has won');
      computerWins++;
    }
  }

  //final de juego
  print('The score have been like that: COMPUTER: $computerWins and USER: $userWins');

  if (computerWins > userWins) {
    print('Computer has won');
  }else{
    print ('User has won');
  }
}
