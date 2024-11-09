class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: $amount');
    } else {
      print('Deposit amount must be positive');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrawn: $amount');
    } else {
      print('Invalid withdrawal amount');
    }
  }

  double get balance => _balance;
}

void main() {
  BankAccount myAccount = BankAccount();
  
  myAccount.deposit(100.0);
  myAccount.withdraw(50.0);
  
  print('Current balance: ${myAccount.balance}'); // Outputs: Current balance: 50.0
}
