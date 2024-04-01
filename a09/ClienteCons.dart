import 'Cliente.dart';
import 'ContaBanc.dart';

void main() {
  ContaBancaria contaBancaria =
      new ContaBancaria(383, 093.15, 'Henrique', 30.00, 29.90);
  Cliente cliente = new Cliente('Rafaelle', 10987654321, contaBancaria);

  cliente.imprimir();
}
