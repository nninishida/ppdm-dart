import 'Animal.dart';

class Gato extends Animal {
  Gato(String nome, String especie, int idade) : super(nome, especie, idade);

  void fazerBarulho() {
    print('miauuu!🐱🐱');
  }
}
