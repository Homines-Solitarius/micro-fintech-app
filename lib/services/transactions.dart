class Transactions {
  String? receiverAccount;
  double? amount;
  String? transactionType;

  Transactions({
    required this.amount,
    required this.receiverAccount,
    this.transactionType,
  });

// ADD MONEY OR FUND WALLET
}

void addMoney(String receiverAccount, double amount,
    {String? transactionType}) {}
