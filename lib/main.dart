import 'package:flutter/material.dart';
import 'package:dice_app/gradient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(body: Gradientt(Colors.greenAccent, Colors.white30,Colors.lightBlueAccent,)));
  }
}
