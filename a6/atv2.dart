class Carro {
  String marca;
  String modelo;
  int ano;
  double velocidade;

  Carro(this.marca, this.modelo, this.ano, this.velocidade);

  void acelerar(double incremento) {
    velocidade += incremento;
  }

  void frear(double decremento) {
    if (velocidade - decremento >= 0) {
      velocidade -= decremento;
    } else {
      velocidade = 0;
    }
  }

  void exibirInformacoes() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Velocidade: $velocidade km/h');
  }
}

void main() {
  Carro meuCarro = Carro('Toyota', 'Corolla', 2022, 0);
  meuCarro.acelerar(50);
  meuCarro.exibirInformacoes();
  meuCarro.frear(20);
  meuCarro.exibirInformacoes();
}