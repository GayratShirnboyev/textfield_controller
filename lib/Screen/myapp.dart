import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController txt = TextEditingController(text: '0');
  double result = 0;

  @override
  Widget build(BuildContext context) {
    printTxt() {
      double x = 10;
      double y = double.parse(txt.text);

      print('text:${y + x}');
      setState(() {
        result = x + y;
      });
    }

    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Input'),
            controller: txt,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
          ),
          Text(result.toString()),
          TextButton(
            onPressed: printTxt,
            child: Text('CLICK ME'),
          )
        ],
      )),
    );
  }
}
