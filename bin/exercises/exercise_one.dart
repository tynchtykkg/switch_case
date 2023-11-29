import 'dart:io';

void main() {
  print(weekDays());
}

String weekDays() {
  print("Enter any number from 1 to 7");
  int day = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  switch (day) {
    case 1:
      return "Monday";
    case 2:
      return "Tuesday";
    case 3:
      return "Wednesday";
    case 4:
      return "Thursday";
    case 5:
      return "Friday";
    case 6:
      return "Saturday";
    case 7:
      return "Sunday";
    default:
      return "Error";
  }
}
