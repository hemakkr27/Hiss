// import 'dart:async';

// import 'package:flutter/material.dart';

// import 'home.dart';

// class Firstscrn extends StatefulWidget {
//   const Firstscrn({Key? key}) : super(key: key);

//   @override
//   State<Firstscrn> createState() => _FirstscrnState();
// }

// class _FirstscrnState extends State<Firstscrn> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         const Duration(seconds: 3),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => HomePagenew())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 232, 224, 255),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               "",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 14, 5, 39),
//               ),
//             ),
//             Image.asset(
//               "assets/images/Picture2.jpg",
//               width: MediaQuery.of(context).size.width / 1.1,
//             ),
//             Image.asset(
//               "assets/images/Picture3.png",
//               width: MediaQuery.of(context).size.width / 1.5,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
