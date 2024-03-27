class Carro {
  String _placa;
  String _numChassi;

  Carro(this._placa, this._numChassi);

  Carro.comPlaca(this._placa) : _numChassi = 'Indefinido';

  Carro.comChassi(this._numChassi) : _placa = 'Desconhecido';

  // Getters
  String get placa => _placa;
  String get numChassi => _numChassi;

  // Setters
  set placa(String placa) => _placa = placa;
  set numChassi(String numChassi) => _numChassi = numChassi;
}

class Animal {
  double _tamanho;
  String _cor;

  Animal(this._tamanho, this._cor);

  Animal.comTamanho(this._tamanho) : _cor = 'Indefinida';

  Animal.comCor(this._cor) : _tamanho = 0;

  // Getters
  double get tamanho => _tamanho;
  String get cor => _cor;

  // Setters
  set tamanho(double tamanho) => _tamanho = tamanho;
  set cor(String cor) => _cor = cor;
}

class Consulta {
  DateTime _data;
  String _nomePaciente;
  String _nomeDentista;

  Consulta(this._data, this._nomePaciente, this._nomeDentista);

  // Getters
  DateTime get data => _data;
  String get nomePaciente => _nomePaciente;
  String get nomeDentista => _nomeDentista;

  // Setters
  set data(DateTime data) => _data = data;
  set nomePaciente(String nomePaciente) => _nomePaciente = nomePaciente;
  set nomeDentista(String nomeDentista) => _nomeDentista = nomeDentista;
}
