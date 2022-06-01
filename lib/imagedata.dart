// import 'dart:ffi';

// import 'package:flutter/material.dart';

// bool boolVal2 = false;

// class Imagedatacls extends StatefulWidget {
//   @override
//   State<Imagedatacls> createState() => _ImagedataclsState();
// }

// class _ImagedataclsState extends State<Imagedatacls> {
//   late TransformationController controller;
//   late AnimationController animationController;

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     controller = TransformationController();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   final double minScale = 1;
//   final double maxScale = 4;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text('Material App Bar'),
//           ),
//           body: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: InteractiveViewer(
//               transformationController: controller,
//               clipBehavior: Clip.none,
//               panEnabled: false,
//               minScale: minScale,
//               maxScale: maxScale,
//               child: AspectRatio(
//                   aspectRatio: 1,
//                   child: Image.network(
//                     'https://picsum.photos/250?image=2',
//                     fit: BoxFit.cover,
//                   )),
//             ),
//           )),
//     );
//   }
// }



// // void _showDialog(
// //   BuildContext context,
// // ) {
// //   showDialog(
// //     context: context,
// //     builder: (BuildContext context) {
// //       return AlertDialog(
// //         shape: boolVal2 == true
// //             ? CircleBorder()
// //             // borderRadius: BorderRadius.circular(30),

// //             : RoundedRectangleBorder(),
// //         // shape: RoundedRectangleBorder(
// //         //   borderRadius: BorderRadius.circular(30),
// //         // ),

// //         title: new Text("Image Name"),
// //         content: Image.network('https://picsum.photos/250?image=2'),
// //         actions: [
// //           Center(
// //             child: TextButton(
// //               child: new Text("OK"),
// //               onPressed: () {
// //                 Navigator.of(context).pop();
// //               },
// //             ),
// //           ),
// //         ],
// //       );
// //     },
// //   );
// // }
