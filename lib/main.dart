import 'package:flutter/material.dart';
import 'package:hiis_app/home.dart';
import 'package:hiis_app/yeardata.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HIIS App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('HISS APP'),
          ),
          body:
              //ImageListn()
              const HomePagenew()),
    );
  }
}
