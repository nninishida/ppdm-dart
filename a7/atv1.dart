class Animal {
  String nome;
  String sexo;
  String raca;

  Animal(this.nome, this.sexo, this.raca);
}

class Lobo extends Animal {
  Lobo(String nome, String sexo, String raca) : super(nome, sexo, raca);
}

class Leao extends Animal {
  Leao(String nome, String sexo, String raca) : super(nome, sexo, raca);
}

class Cachorro extends Animal {
  Cachorro(String nome, String sexo, String raca) : super(nome, sexo, raca);
}

class Gato extends Animal {
  Gato(String nome, String sexo, String raca) : super(nome, sexo, raca);
}

void main() {
  var lobo = Lobo('Lobo', 'Macho', 'Cinzento');
  var leao = Leao('Leão', 'Macho', 'Africano');
  var cachorro = Cachorro('Cachorro', 'Macho', 'Labrador');
  var gato = Gato('Gato', 'Fêmea', 'Siamês');

  print('Nome do Lobo: ${lobo.nome}');
  print('Sexo do Leão: ${leao.sexo}');
  print('Raça do Cachorro: ${cachorro.raca}');
  print('Nome do Gato: ${gato.nome}');
}
