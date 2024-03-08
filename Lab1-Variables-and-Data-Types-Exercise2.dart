import 'dart:io';

void main() {
  const int speedOfLight = 299792458; 
  
  print("Enter the distance:");
  double distance = double.parse(stdin.readLineSync()!);

  double timeInSeconds = distance / speedOfLight;

  print("It takes $timeInSeconds seconds to travel $distance meters.");
}