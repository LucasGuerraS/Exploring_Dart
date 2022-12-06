import 'dart:math';

import '../models/account.dart';

void testNullSafety() {
  Account? myAccount =
      Account(name: "Lucas", balance: 200, isAuthenticated: true);

  //Simulando comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber <= 5) {
    myAccount.createdAt = DateTime.now();
  }

  print(myAccount.runtimeType);

  //  Teste forçado má pratica
  //  print(myAccount.balance);
  //  print(myAccount.createdAt);
  //  print(myAccount.createdAt.day);

  //  Conversão direta má pratica
  //  print(myAccount!.balance);
  //  print(myAccount.createdAt!.day);

  ///  Teste com if else
  if (myAccount != null) {
    print(myAccount.balance);
    if (myAccount.createdAt != null) {
      print(myAccount.createdAt!.day);
    } else {
      print("Dia Nulo");
    }
  } else {
    print("Conta nula");
  }

  //  Ternário
  //  print(myAccount != null ? myAccount.balance : "Conta nula");

  //  Safe Call
  // print(myAccount?.balance);
}
