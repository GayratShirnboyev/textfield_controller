import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void printTxt() {
    print('Button is pressed');
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController txt = TextEditingController(text: 'Controller');
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Input'),
            controller: txt,
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
