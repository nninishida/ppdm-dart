import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CurrencyConverter(),
  ));
}

class CurrencyConverter extends StatefulWidget {
  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double _reais = 0.0;
  double _dollars = 0.0;
  double _euros = 0.0;

  void _convertToDollars(double reais) {
    setState(() {
      _reais = reais;
      _dollars = reais / 5.25; // 1 dólar = 5.25 reais
      _euros = _dollars * 0.85; // 1 dólar = 0.85 euros
    });
  }

  void _convertToReais(double dollars) {
    setState(() {
      _dollars = dollars;
      _reais = dollars * 5.25; // 1 dólar = 5.25 reais
      _euros = dollars * 0.85 / 1.23; // 1 euro = 1.23 dólares
    });
  }

  void _convertToEuros(double euros) {
    setState(() {
      _euros = euros;
      _dollars = euros * 1.23; // 1 euro = 1.23 dólares
      _reais = (_dollars * 5.25); // 1 dólar = 5.25 reais
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de Moedas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Reais'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  double reais = double.parse(value);
                  _convertToDollars(reais);
                } else {
                  setState(() {
                    _reais = 0.0;
                    _dollars = 0.0;
                    _euros = 0.0;
                  });
                }
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(labelText: 'Dólares'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  double dollars = double.parse(value);
                  _convertToReais(dollars);
                } else {
                  setState(() {
                    _reais = 0.0;
                    _dollars = 0.0;
                    _euros = 0.0;
                  });
                }
              },
            ),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(labelText: 'Euros'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  double euros = double.parse(value);
                  _convertToEuros(euros);
                } else {
                  setState(() {
                    _reais = 0.0;
                    _dollars = 0.0;
                    _euros = 0.0;
                  });
                }
              },
            ),
            SizedBox(height: 20.0),
            Text(
              'Reais: ${_reais.toStringAsFixed(2)}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Dólares: ${_dollars.toStringAsFixed(2)}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Euros: ${_euros.toStringAsFixed(2)}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
