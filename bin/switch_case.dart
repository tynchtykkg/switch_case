import 'dart:math';

void main() {
  int finger = Random().nextInt(6);
  print(finger);

  switch (finger) {
    case 1:
      print("Thumb");
      break;
    case 2:
      print("Forefinger");
      break;
    case 3:
      print("Middle finger");
      break;
    case 4:
      print("Ring finger");
      break;
    case 5:
      print("Little finger");
      break;
    default:
      print("Error");
      break;
  }
}
