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
//         Icon(, color: color),
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
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Icon(Icons.phone),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0),
//             child: Icon(Icons.route),
//           ),
//           Icon(Icons.share),
//           Icon(Icons.person),
//         ],
//       ),
//     );
//   } //State<TestPage> createState() => _TestPageState();
// }
// class _TestPageState extends State<TestPage> {
//   var _text = 'Hello'; // state variable
//   //var _icon = Icons.airlines;
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
//                   _text = "",
//                   _icon = null;
//                   style: GoogleFonts.kanit(fontSize: 80.0),
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

//   Widget buildItem({
//     required IconData icon, //optional
//     required String label,
//     Color color = Colors.black,
//   }) {
//     return Column(
//       children: [
//         Icon(, color: color),
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
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Icon(Icons.phone),
//           Padding(
//             padding: const EdgeInsets.only(left: 20.0),
//             child: Icon(Icons.route),
//           ),
//           Icon(Icons.share),
//           Icon(Icons.person),
//         ],
//       ),
//     );
//   } //State<TestPage> createState() => _TestPageState();
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
//                   style: GoogleFonts.kanit(fontSize: 80.0),
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

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
        
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

