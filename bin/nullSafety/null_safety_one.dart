void main() {
  int? someNumber;
  increaseValue(someNumber);
}

void increaseValue(int? value) {
  if (value != null) {
    value++;
  } else {
    value = 1;
  }
  print(value);
}
