import 'dart:io';

void main() {
  print('Enter the operation (+, -, *, /):');
  String operation = stdin.readLineSync()!;

  print('first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('second number:');
  double num2 = double.parse(stdin.readLineSync()!);


  double res = calc(operation, num1, num2);


  print('Result: $res');
}


double calc(String operation, double num1, double num2) {
  switch (operation) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 != 0) {
        return num1 / num2;
      } else {
        print('Error: Cannot divide by zero.');
        exit(1);
      }
      break;
    default:
      print('Invalid operation.');
      exit(1); 
  }
}
