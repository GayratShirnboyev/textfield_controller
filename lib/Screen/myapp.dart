import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController txt = TextEditingController(text: 'Controller');
    return MaterialApp(
      home: Scaffold(
          body: Container(
        child: TextField(
          decoration: InputDecoration(labelText: 'Input'),
          controller: txt,
        ),
      )),
    );
  }
}
