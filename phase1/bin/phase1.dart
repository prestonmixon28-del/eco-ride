import 'dart:io';

void main() {
  const double baseRate = 5.0;

  print('eco-ride rent calculator');
  print('enter your travel distance');

  String? input = stdin.readLineSync();
  
  int distance = int.parse(input!);

  double cost = distance * baseRate;
  print('your rental cost is \$${cost.toStringAsFixed(2)}');
}
