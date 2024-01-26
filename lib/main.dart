//maindart
//import 'package:coffee_shop_app/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:test_page/pin_login.dart';
//import 'package:test_page/test_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFF0C0F14),
      ),
      home: PinLoginPage(),
      //home: const TestPage(),
    );
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(PinLoginPage());
// }

// class PinLoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.security, size: 55.0),
//               SizedBox(height: 8.0), // แก้ไขเป็น height
//               Text(
//                 'PIN LOGIN',
//                 style: TextStyle(
//                   fontSize: 18.0,
//                 ),
//               ),
//               Expanded( // ย้าย Expanded ไปใส่ที่นี่
//                 child: Center(
//                   child: PinInput(),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// class PinInput extends StatefulWidget {
//   @override
//   _PinInputState createState() => _PinInputState();
// }

// class _PinInputState extends State<PinInput> {
//   String pin = '';

//   void addPin(String digit) {
//     if (pin.length < 6) {
//       setState(() {
//         pin += digit;
//       });
//     }
//   }

//   void clearPin() {
//     setState(() {
//       pin = '';
//     });
//   }

//   void deletePin() {
//     if (pin.isNotEmpty) {
//       setState(() {
//         pin = pin.substring(0, pin.length - 1);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,    
//       children: <Widget>[
//         Text(
//           pin.padRight(6, '_'),
//           style: TextStyle(fontSize: 20.0),
//         ),
//         SizedBox(height: 20.0),
//         // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลข
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               width: 65.0,
//               height: 65.0,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(width: 0.7, color: Colors.grey),
//               ),

//                 child: TextButton(
//                   onPressed: () => addPin('1'),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '1',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//                       ),Text('one', style: TextStyle(fontSize: 12.0, color: Colors.black),)
//                     ],
//                   ),
//                 ),
//             ),

//             SizedBox(width: 15.0), // เพิ่มระยะห่างระหว่างปุ่ม
//             SizedBox.square(
//               child: Container(
//                 width: 65.0,
//                 height: 65.0,
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(width: 0.7, color: Colors.grey),
//                 ),
              
//                 child: TextButton(
//                   onPressed: () => addPin('2'),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '2',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//                       ),Text('two', style: TextStyle(fontSize: 12.0, color: Colors.black),)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(width: 15.0),
//             SizedBox.square(
//               child: Container(
//                 width: 65.0,
//                 height: 65.0,
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(width: 0.7, color: Colors.grey),
//                 ),

//                 child: TextButton(
//                   onPressed: () => addPin('3'),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '3',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//                       ),Text('three', style: TextStyle(fontSize: 12.0, color: Colors.black),)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 15.0),
//         // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลขในแถวถัดไป
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               width: 65.0,
//               height: 65.0,
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(width: 0.7, color: Colors.grey),
//                 ), 

//                 child: TextButton(
//                   onPressed: () => addPin('4'),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '4',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//                       ),Text('four', style: TextStyle(fontSize: 12.0, color: Colors.black),)
//                     ],
//                   ),
//                 ),
//             ),
//             SizedBox(width: 15.0),
//             SizedBox.square(
//               child: Container(
//                 width: 65.0,
//                 height: 65.0,
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(width: 0.7, color: Colors.grey),
//                 ), 

//                 child: TextButton(
//                   onPressed: () => addPin('5'),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '5',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//                       ),Text('five', style: TextStyle(fontSize: 12.0, color: Colors.black),)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(width: 15.0),
//             SizedBox.square(
//               child: Container(
//                 width: 65.0,
//                 height: 65.0,
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(width: 0.7, color: Colors.grey),
//                 ), 

//                 child: TextButton(
//                   onPressed: () => addPin('6'),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '6',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//                       ),Text('six', style: TextStyle(fontSize: 12.0, color: Colors.black),)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 15.0),
//         // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลขในแถวถัดไป
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//               Container(
//                 width: 65.0,
//                 height: 65.0,
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(width: 0.7, color: Colors.grey),
//                 ),

//                 child: TextButton(
//                   onPressed: () => addPin('7'),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '7',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//                       ),Text('seven', style: TextStyle(fontSize: 12.0, color: Colors.black),)
//                     ],
//                   ),
//                 ),
//               ),
//             SizedBox(width: 15.0),
//             SizedBox.square(
//               child: Container(
//                 width: 65.0,
//                 height: 65.0,
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(width: 0.7, color: Colors.grey),
//                 ),

//                 child: TextButton(
//                   onPressed: () => addPin('8'),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '8',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//                       ),Text('eight', style: TextStyle(fontSize: 12.0, color: Colors.black),)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(width: 15.0),
//             SizedBox.square(
//               child: Container(
//                 width: 65.0,
//                 height: 65.0,
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(width: 0.7, color: Colors.grey),
//                 ),

//                 child: TextButton(
//                   onPressed: () => addPin('9'),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '9',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//                       ),Text('nine', style: TextStyle(fontSize: 12.0, color: Colors.black),)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 15.0),
//         // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลขในแถวสุดท้าย
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               width: 65.0,
//               height: 65.0,
//               decoration: BoxDecoration(
//                 border: Border.all(width: 0.1, color: Colors.white),
//                 ),

//                 child: TextButton(
//                   onPressed: clearPin,
//                   child: Icon(
//                     Icons.clear,
//                     size: 24.0,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             SizedBox(width: 15.0),
//             SizedBox.square(             
//               child: Container(
//                 width: 65.0,
//                 height: 65.0,
//                 decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(width: 0.7, color: Colors.grey),
//                 ),

//                 child: TextButton(
//                   onPressed: () => addPin('0'),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '0',
//                         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
//                       ),Text('zero', style: TextStyle(fontSize: 12.0, color: Colors.black),)
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(width: 15.0),
//             SizedBox.square(             
//               child: Container(
//                 width: 65.0,
//                 height: 65.0,
//                 decoration: BoxDecoration(
//                 border: Border.all(width: 0.1, color: Colors.white),
//                 ),
//                 child: TextButton(
//                   onPressed: deletePin,
//                   child: Icon(
//                     Icons.backspace_outlined,
//                     size: 24.0,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }



// //import 'package:flutter/material.dart';
// //import 'package:google_fonts/google_fonts.dart';

// class TestPage extends StatelessWidget {
//   const TestPage({super.key});

//   Widget buildItem({
//     required IconData icon, //optional
//     required String label,
//     Color color = Colors.black,
//   }) {
//     return InkWell(
//       onTap: () {
//         print("clicked!");
//       },
//       child: Container(
//         width: 100.0,
//         padding: const EdgeInsets.symmetric(vertical: 20.0),
//         child: Column(
//           children: [
//             Icon(icon, color: color),
//             Text(
//               label,
//               style: GoogleFonts.notoSansThai(
//                 color: color,
//                 fontSize: 20.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

  // Widget buildTextWithBackground({
  //   required String text,
  //   required Color color,
  // }) {
  //   return Container(
  //     color: color,
  //     padding: EdgeInsets.all(8.0),
  //     child: Text(text),
  //   );
  // }

//   @override
//   Widget build(BuildContext context) {
//     var itemList = [
//       buildItem(icon: Icons.phone, label: "โทร", color: Colors.pink),
//       buildItem(icon: Icons.route, label: "เส้นทาง", color: Colors.blue),
//       buildItem(icon: Icons.share, label: "แชร์", color: Colors.green),
//       buildItem(icon: Icons.person, label: "ฉัน", color: Colors.orange),
//     ];

//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.only(top: 50.0),
//         child: Column(
//           children: [
//             Expanded(child: Center(child: Text("Hello Flutter"))),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               //crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: itemList,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class TestPage extends StatefulWidget {
//   const TestPage({super.key});

//   @override
//   State<TestPage> createState() => _TestPageState();
// }

// class _TestPageState extends State<TestPage> {
//   var _text = 'Hello'; // state variable

//   Widget buildItem({
//     required IconData icon, //optional
//     required String label,
//     Color color = Colors.black,
//   }) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           //_text = Random().nextInt(100).toString();
//           _text = label;
//         });
//       },
//       child: Container(
//         width: 100.0,
//         padding: const EdgeInsets.symmetric(vertical: 20.0),
//         child: Column(
//           children: [
//             Icon(icon, color: color),
//             Text(
//               label,
//               style: GoogleFonts.notoSansThai(
//                 color: color,
//                 fontSize: 20.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget buildTextWithBackground({
//   @override
//   Widget build(BuildContext context) {
//     var itemList = [
//       buildItem(icon: Icons.phone, label: "โทร", color: Colors.pink),
//       buildItem(icon: Icons.route, label: "เส้นทาง", color: Colors.blue),
//       buildItem(icon: Icons.share, label: "แชร์", color: Colors.green),
//       buildItem(icon: Icons.person, label: "ฉัน", color: Colors.orange),
//     ];

//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.only(top: 50.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: Center(
//                 child: Text(
//                   _text,
//                   style:GoogleFonts.notoSansThai(fontSize: 80.0), //ฟอนต์ prompt notoSansThai
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               //crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: itemList,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// //maindart
// import 'package:coffee_shop_app/pages/cart_page.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Coffee Shop App',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//         scaffoldBackgroundColor: Color(0xFF0C0F14),
//       ),
//       home: const CartPage(),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class TestPage extends StatelessWidget {
//   const TestPage({super.key});

//   Widget buildItem({
//     required IconData icon, //optional
//     required String label,
//     Color color = Colors.black,
//   }) {
//     return InkWell(
//       onTap: () {
//         print("clicked!");
//       },
//       child: Container(
//         width: 100.0,
//         padding: const EdgeInsets.symmetric(vertical: 20.0),
//         child: Column(
//           children: [
//             Icon(icon, color: color),
//             Text(
//               label,
//               style: GoogleFonts.notoSansThai(
//                 color: color,
//                 fontSize: 20.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget buildTextWithBackground({
//   //   required String text,
//   //   required Color color,
//   // }) {
//   //   return Container(
//   //     color: color,
//   //     padding: EdgeInsets.all(8.0),
//   //     child: Text(text),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     var itemList = [
//       buildItem(icon: Icons.phone, label: "โทร", color: Colors.pink),
//       buildItem(icon: Icons.route, label: "เส้นทาง", color: Colors.blue),
//       buildItem(icon: Icons.share, label: "แชร์", color: Colors.green),
//       buildItem(icon: Icons.person, label: "ฉัน", color: Colors.orange),
//     ];

//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.only(top: 50.0),
//         child: Column(
//           children: [
//             Expanded(child: Center(child: Text("Hello Flutter"))),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               //crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: itemList,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class TestPage extends StatelessWidget {
//   const TestPage({super.key});

//   Widget buildItem({
//     required IconData icon, //optional
//     required String label,
//     Color color = Colors.black,
//   }) {
//     return Column(
//       children: [
//         Icon(icon, color: color),
//         Text(
//           label,
//           style: GoogleFonts.notoSansThai(
//             color: color,
//             fontSize: 20.0,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget buildTextWithBackground({
//     required String text,
//     required Color color,
//   }) {
//     return Container(
//       width: 200.0,
//       color: color,
//       padding: EdgeInsets.all(8.0),
//       child: Text(text),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.only(top: 50.0),
//         child: Column(
//           //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // buildItem(icon: Icons.phone, label: "โทร", color: Colors.pink),
//             // buildItem(icon: Icons.route, label: "เส้นทาง", color: Colors.blue),
//             // buildItem(icon: Icons.share, label: "แชร์", color: Colors.green),
//             // buildItem(icon: Icons.person, label: "ฉัน", color: Colors.orange),
//             buildTextWithBackground(text: "aaa", color: Colors.pinkAccent),
//             buildTextWithBackground(text: "bbbbbbbb", color: Colors.lime),
//             Spacer(flex: 2),
//             buildTextWithBackground(text: "ccccc", color: Colors.yellow),
//             Spacer(flex: 1),
//             //buildTextWithBackground(text: "dddd", color: Colors.lightBlue),
//             ElevatedButton(onPressed: () {}, child: Text("Go"))
//           ],
//         ),
//       ),
//     );
//   }
// }