import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController txt = TextEditingController();

    void printTxt() {
      double x = 10;
      double y = double.parse(txt.text);
      print('text:${y + x}');
    }

    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Input'),
            controller: txt,
            keyboardType: TextInputType.number,
          ),
          TextButton(
            onPressed: printTxt,
            child: Text('CLICK ME'),
          )
        ],
      )),
    );
  }
}
