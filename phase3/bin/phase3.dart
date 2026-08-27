import 'dart:io';

void main () {
  const double baseRate = 5.0;
  const double serviceFee = 2.0;

  String continueChoice = 'y';

  while (continueChoice.toLowerCase() == 'y') {
    print('eco-ride rental calculator');
    print('enter 1 for a bike or 2 for a scooter:');

    String? choiceInput = stdin.readLineSync();
    int choice = int.tryParse(choiceInput!)!;

    print('enter your travel distance');

    String? distanceInput = stdin.readLineSync();
    int distance = int.parse(distanceInput!);

    double cost;

    if (choice == 1) {
      cost = baseRate * distance;
      print('you selected a bike');
    } else if (choice == 2) {
      cost = baseRate * distance + serviceFee;
      print('you selected a scooter');
    } else {
      print('invalid choice');
      return;
    }
    print('your total cost is: ${cost.toStringAsFixed(2)}');

    print('do you want to calculate another ride? (y/n)');
    continueChoice = stdin.readLineSync()!;
  }
}
