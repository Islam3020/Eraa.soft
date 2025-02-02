import 'dart:io';

class BankAccount {
  String cardNumber;
  String name;
  double balance;

  BankAccount(this.cardNumber, this.name, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited \$${amount.toString()}. New balance: \$${balance.toString()}');
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Withdrew \$${amount.toString()}. New balance: \$${balance.toString()}');
    } else {
      print('Insufficient balance.');
    }
  }

  void checkBalance() {
    print('Current balance: \$${balance.toString()}');
  }

  void transferMoney(BankAccount other, double amount) {
    if (balance >= amount) {
      balance -= amount;
      other.deposit(amount);
      print('Transferred \$${amount.toString()} to ${other.name}.');
    } else {
      print('Insufficient balance for transfer.');
    }
  }
}


class NormalAccount extends BankAccount {
  NormalAccount(String cardNumber, String name, double balance)
      : super(cardNumber, name, balance);

  @override
  void transferMoney(BankAccount other, double amount) {
    if (this != other) {
      super.transferMoney(other, amount);
    } else {
      print('Cannot transfer money to the same account.');
    }
  }
}


class SavingsAccount extends BankAccount {
  double interest;

  SavingsAccount(String cardNumber, String name, double balance, this.interest)
      : super(cardNumber, name, balance);

  @override
  void deposit(double amount) {
    balance += amount + (amount * interest);
    print('Deposited \$${amount.toString()} with interest. New balance: \$${balance.toString()}');
  }

  @override
  void transferMoney(BankAccount other, double amount) {
    if (this != other) {
      if (balance >= amount) {
        balance -= amount;
        other.deposit(amount);
        print('Transferred \$${amount.toString()} to ${other.name} with interest.');
      } else {
        print('Insufficient balance for transfer.');
      }
    } else {
      print('Cannot transfer money to the same account.');
    }
  }
}



void main() {
  var normalAccount = NormalAccount('123456', 'Islam Ali', 1000.0);
  var savingsAccount = SavingsAccount('654321', 'Islam Ali', 2000.0, 0.05);

  bool running = true;
  while (running) {
    print('\nChoose an operation:');
    print('1: Deposit');
    print('2: Withdraw');
    print('3: Check Balance');
    print('4: Transfer Money');
    print('5: Exit');

    var choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print('Enter amount to deposit:');
        double amount = double.parse(stdin.readLineSync()!);
        print('Choose account (1: Normal, 2: Savings):');
        int accountChoice = int.parse(stdin.readLineSync()!);
        if (accountChoice == 1) {
          normalAccount.deposit(amount);
        } else if (accountChoice == 2) {
          savingsAccount.deposit(amount);
        } else {
          print('Invalid account choice.');
        }
        break;

      case 2:
        print('Enter amount to withdraw:');
        double amount = double.parse(stdin.readLineSync()!);
        print('Choose account (1: Normal, 2: Savings):');
        int accountChoice = int.parse(stdin.readLineSync()!);
        if (accountChoice == 1) {
          normalAccount.withdraw(amount);
        } else if (accountChoice == 2) {
          savingsAccount.withdraw(amount);
        } else {
          print('Invalid account choice.');
        }
        break;

      case 3:
        print('Choose account (1: Normal, 2: Savings):');
        int accountChoice = int.parse(stdin.readLineSync()!);
        if (accountChoice == 1) {
          normalAccount.checkBalance();
        } else if (accountChoice == 2) {
          savingsAccount.checkBalance();
        } else {
          print('Invalid account choice.');
        }
        break;

      case 4:
        print('Enter amount to transfer:');
        double amount = double.parse(stdin.readLineSync()!);
        savingsAccount.transferMoney(normalAccount, amount);
        break;

      case 5:
        running = false;
        print('Exiting the application.');
        break;

      default:
        print('Invalid choice.');
        break;
    }
  }
}