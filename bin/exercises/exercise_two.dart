import 'dart:io';

void main() {
  double balance = 0;

  menu(balance);
}

void menu(double balance) {
  print('''Добрый день!
  Добро пожаловать в личный кабинет.
  Выберите, пожалуйста, операцию:
  1. Депозит
  2. Снятие денежных средств
  3. Запрос баланса
  4. Закрыть счет''');

  String choice = stdin.readLineSync() ?? '';

  switch (choice) {
    case '1':
      print('Введите сумму депозита');
      double inputBalance = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
      balance = deposit(balance, inputBalance);
      menu(balance);
      break;
    case '2':
      print('Введите сумму для снятия');
      double outBalance = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
      balance = cashOut(balance, outBalance);
      menu(balance);
      break;
    case '3':
      print('Ваш баланс составляет: $balance');
      menu(balance);
      break;
    case '4':
      print('Ваш счет закрыт');
      break;
    default:
      print('Ошибка');
      menu(balance);
      break;
  }
}

double deposit(double currentBalance, inputBalance) {
  return currentBalance + inputBalance;
}

double cashOut(double currentBalance, outBalance) {
  return currentBalance - outBalance;
}
