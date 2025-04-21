class UserModel {
  final String name;
  final double balance;
  final String accountNumber;

  UserModel(
      {required this.accountNumber, required this.name, required this.balance});
}

UserModel currentUser =
    UserModel(accountNumber: "9156229506", name: "Afolabi Tobi", balance: 4000);
