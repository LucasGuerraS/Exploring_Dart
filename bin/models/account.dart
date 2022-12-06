class Account {
  String name;
  double balance;
  bool isAuthenticated;
  DateTime? createdAt;

  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated, this.createdAt})
      : assert(name.isNotEmpty, "name cant be empty"),
        assert(balance >= 0, "Balance cannot be less than zero");

  editBalance({required value}) {
    balance = balance + value;
  }
}
