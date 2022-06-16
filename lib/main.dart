import 'package:flutter/material.dart';
//import 'package:hiis_app/home.dart';
import 'package:hiis_app/welcome.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HISS App',
      home: Scaffold(
          body:
              //ImageListn()
              MyHomePage()),
    );
  }
}
