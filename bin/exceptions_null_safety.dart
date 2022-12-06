import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'helpers/null_safety.dart';
import 'models/account.dart';

void main() {
  testNullSafety();
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  // Account testAcc = Account(name: "l", balance: -10, isAuthenticated: true);
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 500);
    // Observando resultado
    if (result) {
      print("Transação concluída com sucesso");
    }
  } on SenderIDInvalidException catch (e) {
    print(e.message);
  } on ReceiverIDInvalidException catch (e) {
    print(e.message);
  } on SenderNotAuthenticatedException catch (e) {
    print(e.message);
  } on ReceiverNotAuthenticatedException catch (e) {
    print(e.message);
  } on SenderBalanceInsufficientException catch (e) {
    print(e.message);
  } on Exception catch (e) {
    print("algo deu errado, erro: $e");
  }
}
