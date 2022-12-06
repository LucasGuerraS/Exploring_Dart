class SenderIDInvalidException implements Exception {
  static const String report = "SenderIDInvalidException";
    static const String note = "Sender has an Invalid ID";

  String idSender;
  late String message;
  SenderIDInvalidException({required this.idSender}) {
    message = "$report\n$note\nID Sender: $idSender";
  }

  @override
  String toString() {
    return message;
  }
}

class ReceiverIDInvalidException implements Exception {
  static const String report = "ReceiverIDInvalidException";
  static const String note = "Receiver has an invalid ID";
  String idReceiver;
  late String message;
  ReceiverIDInvalidException({required this.idReceiver}) {
    message = "$report\n$note\nID Receiver: $idReceiver";
  }

  @override
  String toString() {
    return message;
  }
}

class SenderNotAuthenticatedException implements Exception {
  static const String report = "SenderNotAuthenticatedException";
  static const String note = "Sender is not authenticated";
  String idSender;
  late String message;
  SenderNotAuthenticatedException({required this.idSender}) {
    message = "$report\n$note\nID Sender: $idSender";
  }

  @override
  String toString() {
    return message;
  }
}

class ReceiverNotAuthenticatedException implements Exception {
  static const String report = "ReceiverNotAuthenticatedException";
  static const String note = "Receiver is not authenticated";
  String idReceiver;
  late String message;
  ReceiverNotAuthenticatedException({required this.idReceiver}) {
    message = "$report\n$note\nID Receiver: $idReceiver";
  }

  @override
  String toString() {
    return message;
  }
}

class SenderBalanceInsufficientException implements Exception {
  static const String report = "SenderBalanceInsufficientException";
  static const String note = "Sender Balance has not enough funds to complete transaction";
  String idSender;
  double senderBalance;
  double amount;
  late String message;
  SenderBalanceInsufficientException(
      {required this.idSender,
      required this.amount,
      required this.senderBalance}) {
    message =
        "$report\n$note\nID Sender: $idSender\nSender Balance: $senderBalance\nAmount: $amount";
  }

  @override
  String toString() {
    return message;
  }
}
