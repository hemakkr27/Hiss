import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hiis_app/main.dart';

import 'home.dart';
import 'locslider.dart';

Color color1 = "#A20000" as Color;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePagenew())));
  }

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    print(textScale);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 224, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: ShaderMask(
                      blendMode: BlendMode.modulate,
                      shaderCallback: (size) => const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 24, 50, 136),
                          Color.fromARGB(255, 59, 47, 150),
                          Color.fromARGB(255, 182, 126, 192)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(
                        Rect.fromLTWH(0, 0, size.width, size.height),
                      ),
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Haryana Integrated System of Statistics',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    '(HISS)',
                    style: TextStyle(
                        color: Color.fromARGB(255, 190, 24, 2),
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.10),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/images/logoimg.png",
            ),
            Image.asset(
              "assets/images/niclogo1.png",
              // /width: MediaQuery.of(context).size.width / 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
