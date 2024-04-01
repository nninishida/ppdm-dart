import 'ContaBanc.dart';

void main() {
  ContaBancaria contaBancaria =
      new ContaBancaria(383, 093.15, 'Henrique', 30.00, 29.90);
  contaBancaria.depositar();
  contaBancaria.sacar();
}
