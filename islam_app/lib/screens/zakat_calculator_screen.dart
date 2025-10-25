import 'package:flutter/material.dart';

class ZakatCalculatorScreen extends StatefulWidget {
  const ZakatCalculatorScreen({super.key});

  @override
  _ZakatCalculatorScreenState createState() => _ZakatCalculatorScreenState();
}

class _ZakatCalculatorScreenState extends State<ZakatCalculatorScreen> {
  final _incomeController = TextEditingController();
  final _otherIncomeController = TextEditingController();
  final _debtController = TextEditingController();
  String _zakatResult = '';

  void _calculateZakat() {
    final income = double.tryParse(_incomeController.text) ?? 0;
    final otherIncome = double.tryParse(_otherIncomeController.text) ?? 0;
    final debt = double.tryParse(_debtController.text) ?? 0;
    final totalIncome = income + otherIncome;
    final zakatableAmount = totalIncome - debt;
    if (zakatableAmount > 0) {
      final zakat = zakatableAmount * 0.025;
      setState(() {
        _zakatResult = 'Your Zakat is: ৳${zakat.toStringAsFixed(2)}';
      });
    } else {
      setState(() {
        _zakatResult = 'No Zakat due.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Zakat Calculator',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal, // ✅ changed color
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal, // ✅ changed color
                    ),
                    child: const Text(
                      'Profession',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.teal), // ✅ border teal
                    ),
                    child: const Text(
                      'Maal',
                      style: TextStyle(color: Colors.teal), // ✅ text teal
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _incomeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Income per month',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _otherIncomeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Other income per month (Optional)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _debtController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Debt/installments per month (Optional)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _calculateZakat,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // ✅ changed color
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                'Calculate Zakat',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white, // ✅ text color white
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (_zakatResult.isNotEmpty)
              Text(
                _zakatResult,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal, // ✅ result color teal
                ),
              ),
          ],
        ),
      ),
    );
  }
}
