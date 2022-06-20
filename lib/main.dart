import 'package:flutter/material.dart';
//import 'package:hiis_app/home.dart';
import 'package:hiis_app/welcome.dart';

void main() => runApp(MaterialApp(
    theme: _themeData,
    debugShowCheckedModeBanner: false,
    title: 'HISS App',
    home: MyApp()));

final ThemeData _themeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: colorCustom,
  accentColor: Colors.deepPurpleAccent,
  buttonColor: Colors.purple,
);
//  0XFF7986CB
//   0xFF00ACC1

MaterialColor colorCustom = MaterialColor(0XFF7986CB, color);
Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            //ImageListn()
            MyHomePage());
  }
}




//https://api.flutter.dev/flutter/material/Colors-class.html