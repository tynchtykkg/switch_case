void main() {
  int? someNumber;
  increaseValue(someNumber);
}

void increaseValue(int? value) {
  value = value ??
      0; // если value не равно null, то оставьте value без изменений; если value равно null, то присвойте ему значение 0
  value++;
  print(value);
}
