import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart'; // Import the flutter_share package

import 'firstscr.dart';
import 'locslider.dart';

void main() => runApp(MaterialApp(
      theme: _themeData,
      debugShowCheckedModeBanner: false,
      title: 'HISS App',
      home: MyApp(),
    ));

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

  // Define the URL for sharing the app
  final String appShareUrl =
      "https://drive.google.com/file/d/1uwnPLoqgIKReesRHUFbFZCKC5TML9rrQ/view";
       // Replace with actual app URL

  // Method to handle sharing the app link using flutter_share
  Future<void> _shareApp(BuildContext context) async {
    try {
      await FlutterShare.share(
        title: "Check out the HISS App!",
        text: "This is the best app ever! Download it now: $appShareUrl",
        //   linkUrl: appShareUrl,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Could not share the app link. Please try again.",
            style: TextStyle(color: Colors.red),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Firstscrn(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _shareApp(context),
        child: Icon(Icons.share),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// //import 'package:hiis_app/home.dart';
// import 'package:hiis_app/welcome.dart';

// import 'firstscr.dart';
// import 'locslider.dart';

// void main() => runApp(MaterialApp(
//     theme: _themeData,
//     debugShowCheckedModeBanner: false,
//     title: 'HISS App',
//     home: MyApp()));

// final ThemeData _themeData = ThemeData(
//   brightness: Brightness.light,
//   primarySwatch: colorCustom,
//   accentColor: Colors.deepPurpleAccent,
//   buttonColor: Colors.purple,
// );
// //  0XFF7986CB
// //   0xFF00ACC1

// MaterialColor colorCustom = MaterialColor(0XFF7986CB, color);
// Map<int, Color> color = {
//   50: Color.fromRGBO(136, 14, 79, .1),
//   100: Color.fromRGBO(136, 14, 79, .2),
//   200: Color.fromRGBO(136, 14, 79, .3),
//   300: Color.fromRGBO(136, 14, 79, .4),
//   400: Color.fromRGBO(136, 14, 79, .5),
//   500: Color.fromRGBO(136, 14, 79, .6),
//   600: Color.fromRGBO(136, 14, 79, .7),
//   700: Color.fromRGBO(136, 14, 79, .8),
//   800: Color.fromRGBO(136, 14, 79, .9),
//   900: Color.fromRGBO(136, 14, 79, 1),
// };

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body:
//             //ImageListn()
//             //  MyHomePage());
//             Firstscrn()
//         //  LocSlider(),
//         );
//   }
// }




//https://api.flutter.dev/flutter/material/Colors-class.html

    



          


              // OutlinedButton.icon(
              //     icon: Icon(Icons.star_outline),
              //     label: Text("OutlinedButton"),
              //     onPressed: () => print("it's pressed"),
              //     style: ElevatedButton.styleFrom(
              //       side: BorderSide(
              //         width: 2.0,
              //       ),
              //       shape: RoundedRectangleBorder(
              //           borderRadius: const BorderRadius.all(
              //             Radius.circular(50),
              //           ),
              //           side: BorderSide(
              //             width: 2,
              //             color: Colors.primaries[
              //                 Random().nextInt(Colors.primaries.length)],
              //           )),
              //     ),
              //   ),