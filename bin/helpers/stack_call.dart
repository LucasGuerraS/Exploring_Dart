void stackStart() {
  print("main");
  functionOne();
  print("main");
}

void functionOne() {
  print("functionOne");
  try {
    functionTwo();
  } catch (e) {
    print(e);
  } finally {
    print("Finnaly");
  }
  print("functionOne");
}

void functionTwo() {
  print("functionTwo");
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse("aaaaa");
    print(amount);
  }
  print("functionTwo");
}
