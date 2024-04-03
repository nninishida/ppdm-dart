import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // Variáveis para armazenar os valores dos operandos
  double _value1 = 0;
  double _value2 = 0;

  // Variável para armazenar o resultado das operações
  double _result = 0;

  // Função para somar os valores dos operandos
  void _sum() {
    setState(() {
      _result = _value1 + _value2;
    });
  }

  // Função para subtrair os valores dos operandos
  void _subtract() {
    setState(() {
      _result = _value1 - _value2;
    });
  }

  // Função para multiplicar os valores dos operandos
  void _multiply() {
    setState(() {
      _result = _value1 * _value2;
    });
  }

  // Função para dividir os valores dos operandos
  void _divide() {
    setState(() {
      if (_value2 != 0) {
        _result = _value1 / _value2;
      } else {
        _result = double.infinity; // Indica divisão por zero
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Básica'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Campo de entrada para o primeiro operando
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Digite o primeiro número'),
              onChanged: (value) {
                _value1 = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20.0),
            // Campo de entrada para o segundo operando
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Digite o segundo número'),
              onChanged: (value) {
                _value2 = double.tryParse(value) ?? 0;
              },
            ),
            SizedBox(height: 20.0),
            // Botões para realizar as operações
            ElevatedButton(
              onPressed: _sum,
              child: Text('Somar'),
            ),
            SizedBox(height: 2.0),
            ElevatedButton(
              onPressed: _subtract,
              child: Text('Subtrair'),
            ),
            SizedBox(height: 2.0),
            ElevatedButton(
              onPressed: _multiply,
              child: Text('Multiplicar'),
            ),
            SizedBox(height: 2.0),
            ElevatedButton(
              onPressed: _divide,
              child: Text('Dividir'),
            ),
            SizedBox(height: 2.0),
            // Exibição do resultado
            Text(
              'Resultado: $_result',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
