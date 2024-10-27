import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double res = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 229, 117),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 229, 117),
        title: const Text('Currency Converter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'INR ${res.toStringAsFixed(2)}',
            style: const TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black, // Fixed the color syntax
              ),
              decoration: const InputDecoration(
                hintText: 'Enter the amount in USD',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // This should print to the console
              setState(() {
                res = double.parse(textEditingController.text) * 81;
              }); //
            },
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black),
              foregroundColor: WidgetStatePropertyAll(Colors.white),
            ),
            child: const Text('Convert'),
          ),
        ]),
      ),
    );
  }
}
