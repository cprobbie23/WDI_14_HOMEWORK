class Atm {
  constructor(type){
    this.type = type;
    this.money = 0;
    this.transactionHistory = [];
  }

  withdraw(amount) {
    this.transactionHistory.push(-amount);
    return this.money -= amount;
  }

  deposit(amount) {
    this.transactionHistory.push(amount);
    return this.money += amount;
  }

  get showBalance() {
    return this.money
  }

  transactionHistory(){
    return this.transactionHistory
  }
}

const account = new Atm('checking')
console.log(account.showBalance)
account.deposit(200);
console.log(account.showBalance)
account.withdraw(100);
console.log(account.showBalance)
console.log(account.transactionHistory);
