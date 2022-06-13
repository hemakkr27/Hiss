// import 'package:flutter/material.dart';

// bool boolVal2 = false;

// class Image_show_Network extends StatefulWidget {
//   const Image_show_Network({Key? key}) : super(key: key);

//   @override
//   State<Image_show_Network> createState() => _Image_show_NetworkState();
// }

// class _Image_show_NetworkState extends State<Image_show_Network> {
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
//                     'https://storage.googleapis.com/gd-wagtail-prod-assets/original_images/MDA2018_inline_03.jpg',
//                     fit: BoxFit.cover,
//                   )),
//             ),
//           )),
//     );
//   }
// }






// import 'package:flutter/material.dart';
// import 'dart:io';

// import 'package:image_picker/image_picker.dart';

// class Camera extends StatefulWidget {
//   @override
//   _CameraState createState() => _CameraState();
// }

// class _CameraState extends State<Camera> {
//   File? _imageFile;
//   final _picker = ImagePicker();

//   @override
//   void initState() {
//     _pickImageFromCamera();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         ButtonBar(
//           children: <Widget>[
//             IconButton(
//               icon: const Icon(Icons.photo_camera),
//               onPressed: () async => _pickImageFromCamera(),
//               tooltip: 'Shoot picture',
//             ),
//             IconButton(
//               icon: const Icon(Icons.photo),
//               onPressed: () async => _pickImageFromGallery(),
//               tooltip: 'Pick from gallery',
//             ),
//           ],
//         ),
//         if (_imageFile == null)
//           const Placeholder()
//         else
//           Image.file(_imageFile!),
//       ],
//     );
//   }

//   Future<void> _pickImageFromGallery() async {
//     final PickedFile? pickedFile =
//         await _picker.getImage(source: ImageSource.gallery);
//     setState(() => _imageFile = File(pickedFile!.path));
//   }

//   Future<void> _pickImageFromCamera() async {
//     final PickedFile? pickedFile =
//         await _picker.getImage(source: ImageSource.camera);
//     setState(() => _imageFile = File(pickedFile!.path));
//   }
// }






// void _showDialog(
//   BuildContext context,
// ) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         shape: boolVal2 == true
//             ? CircleBorder()
//             // borderRadius: BorderRadius.circular(30),

//             : RoundedRectangleBorder(),
//         // shape: RoundedRectangleBorder(
//         //   borderRadius: BorderRadius.circular(30),
//         // ),

//         title: new Text("Image Name"),
//         content: Image.network('https://picsum.photos/250?image=2'),
//         actions: [
//           Center(
//             child: TextButton(
//               child: new Text("OK"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }
