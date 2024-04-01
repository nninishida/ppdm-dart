class ContaBancaria {
  int numero;
  double saldo;
  String titular;
  double deposito;
  double saldoA = 0;
  double saque;

  ContaBancaria(
      this.numero, this.saldo, this.titular, this.deposito, this.saque);

  void depositar() {
    saldoA = saldo + deposito;
    print(
        'O saldo é de $saldo reais, o depósito foi de $deposito reais e o saldo atual é de $saldoA reais');
  }

  void sacar() {
    saldoA = saldoA - saque;
    print('O saque foi de $saque reais e o saldo atual é de $saldoA reais');
  }
}
