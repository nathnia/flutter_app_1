import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController _ctrAngka1 = TextEditingController();
  TextEditingController _ctrAngka2 = TextEditingController();
  String _result = '';

  void _calculate(String operation) {
    double? num1 = double.tryParse(_ctrAngka1.text);
    double? num2 = double.tryParse(_ctrAngka2.text);

    if (num1 == null || num2 == null) {
      setState(() {
        _result = "Masukkan angka yang valid";
      });
      return;
    }

    double result;
    switch (operation) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          _result = 'Tidak bisa dibagi 0!';
          setState(() {});
          return;
        }
        result = num1 / num2;
        break;
      default:
        result = 0;
    }

    setState(() {
      _result = 'Hasil: $result';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _ctrAngka1,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Angka 1",
                border: OutlineInputBorder(),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0, 16, 0, 20),
              child: TextField(
                controller: _ctrAngka2,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Angka 2",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _calculate('+'),
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('-'),
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('*'),
                  child: Text('×'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('/'),
                  child: Text('÷'),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(_result),
            ),

            ElevatedButton(
              onPressed: () {
                _ctrAngka1.clear();
                _ctrAngka2.clear();
                setState(() {
                  _result = '';
                });
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
