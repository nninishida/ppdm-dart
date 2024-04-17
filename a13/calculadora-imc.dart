import 'package:flutter/material.dart';

void main() {
  runApp(IMCCalculatorApp());
}

class IMCCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculatora de IMC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IMCCalculator(),
    );
  }
}

String calculateBMIResult(double bmi) {
  if (bmi < 18.5) {
    return 'Abaixo do peso';
  } else if (bmi >= 18.5 && bmi < 25) {
    return 'Peso ideal';
  } else if (bmi >= 25 && bmi < 30) {
    return 'Acima do peso';
  } else {
    return 'Obeso';
  }
}

class IMCCalculator extends StatefulWidget {
  @override
  _IMCCalculatorState createState() => _IMCCalculatorState();
}

class _IMCCalculatorState extends State<IMCCalculator> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double result = 0;
  String bmiResult = '';

  void calculateBMI() {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text) /
        100; // Convert height from cm to m
    double bmi = weight / (height * height);
    String result = calculateBMIResult(bmi);
    setState(() {
      this.result = bmi;
      this.bmiResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Coloque seu peso (kg):',
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
              ),
            ),
            Text(
              'Coloque sua altura (cm):',
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                calculateBMI();
              },
              child: Text('Calcule'),
            ),
            SizedBox(height: 20),
            Text(
              'Seu IMC é: ${result.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Classificação: $bmiResult',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
