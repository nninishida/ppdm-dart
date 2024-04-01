import 'Animal.dart';

class Cachorro extends Animal {
  Cachorro(String nome, String especie, int idade)
      : super(nome, especie, idade);

  void fazerBarulho() {
    print('au au!🐶🐶');
  }
}
