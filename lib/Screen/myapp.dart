import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController txt = TextEditingController(text: 'Controller');

    void printTxt() {
      print('text:${txt.text}');
    }

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
