class Pessoa {
  String _nome;
  int _idade;
  int _cpf;

  Pessoa(this._nome, this._idade, this._cpf);

  String get nome {
    return _nome;
  }

  void set nome(String nome) {
    _nome = nome;
  }

  int get idade {
    return _idade;
  }

  void set idade(int idade) {
    _idade = idade;
  }

  int get cpf {
    return _cpf;
  }

  void set cpf(int cpf) {
    _cpf = cpf;
  }
}
