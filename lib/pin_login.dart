import 'package:flutter/material.dart';

void main() {
  runApp(PinLoginPage());
}

class PinLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.security, size: 58.0),
              SizedBox(height: 10.0), // แก้ไขเป็น height //8.0
              Text(
                'PIN LOGIN',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 8.0), //ตำแหน่งบล้อก //9
              Expanded(
                // ย้าย Expanded ไปใส่ที่นี่
                child: Center(
                  child: PinInput(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PinInput extends StatefulWidget {
  @override
  _PinInputState createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  String pin = '';

  void addPin(String digit) {
    if (pin.length < 6) {
      setState(() {
        pin += digit;
      });
    }
  }

  void clearPin() {
    setState(() {
      pin = '';
    });
  }

  void deletePin() {
    if (pin.isNotEmpty) {
      setState(() {
        pin = pin.substring(0, pin.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          pin.padRight(6, '_'),
          style: TextStyle(fontSize: 20.0, color: Colors.black54),
        ),
        SizedBox(height: 70.0), //ตำแหน่งบล็อกกับunderscore //100
        // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลข
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 65.0, //ขนาดกรอบสี่เหลี่ยม
              height: 65.0, //ขนาดกรอบสี่เหลี่ยม
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.7, color: Colors.grey), //width ค.หนาของเส้น
              ),
              child: TextButton(
                onPressed: () => addPin('1'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'one',
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(width: 15.0), // เพิ่มระยะห่างระหว่างปุ่ม
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('2'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'two',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('3'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '3',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'three',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),  //ตำแหน่งบล้อกระหว่างบล้อก
        // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลขในแถวถัดไป
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.7, color: Colors.grey),
              ),
              child: TextButton(
                onPressed: () => addPin('4'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '4',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'four',
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 16.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('5'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '5',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'five',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 16.0), //ค.ชิดกันระหว่างบล้อกต่อบล้อก
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('6'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '6',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'six',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลขในแถวถัดไป
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.7, color: Colors.grey),
              ),
              child: TextButton(
                onPressed: () => addPin('7'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '7',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'seven',
                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('8'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '8',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'eight',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('9'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '9',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'nine',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.0),
        // แก้ไขตำแหน่งและรูปแบบของปุ่มตัวเลขในแถวสุดท้าย
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                border: Border.all(width: 0.1, color: Colors.white),
              ),
              child: TextButton(
                onPressed: clearPin,
                child: Icon(
                  Icons.clear,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.7, color: Colors.grey),
                ),
                child: TextButton(
                  onPressed: () => addPin('0'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'zero',
                        style: TextStyle(fontSize: 12.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.0),
            SizedBox.square(
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.1, color: Colors.white),
                ),
                child: TextButton(
                  onPressed: deletePin,
                  child: Icon(
                    Icons.backspace_outlined,
                    size: 24.0, //24
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}




//อันเก่า
// import 'package:flutter/material.dart';

// void main() {
//   runApp(PinLoginPage());
// }
// class PinLoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/images/icon.png', // แทนที่ 'assets/logo.png' ด้วยที่อยู่ของไฟล์โลโก้ของคุณ
//                 width: 100.0,
//                 height: 100.0,
//               ),
//               SizedBox(height: 20.0),
//               Text(
//                 'PIN LOGIN',
//                 style: TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20.0),
//               PinLoginWidget(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// class PinLoginWidget extends StatefulWidget {
//   @override
//   _PinLoginWidgetState createState() => _PinLoginWidgetState();
// }

// class _PinLoginWidgetState extends State<PinLoginWidget> {
//   String pin = '';

//   void addDigit(String digit) {
//     setState(() {
//       if (pin.length < 6) {
//         pin += digit;
//       }
//     });
//   }

//   void deleteDigit() {
//     setState(() {
//       if (pin.isNotEmpty) {
//         pin = pin.substring(0, pin.length - 1);
//       }
//     });
//   }

//   void clearPin() {
//     setState(() {
//       pin = '';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20.0),
//           child: Text(
//             '______',
//             style: TextStyle(fontSize: 20.0),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20.0),
//           child: Text(
//             pin,
//             style: TextStyle(fontSize: 24.0),
//           ),
//         ),
//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   children: [
//         //     _buildNumberButton('1', 'one'),
//         //     _buildNumberButton('2', 'two'),
//         //     _buildNumberButton('3', 'three'),
//         //   ],
//         // ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildNumberButton('1'),
//             _buildNumberButton('2'),
//             _buildNumberButton('3'),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildNumberButton('4'),
//             _buildNumberButton('5'),
//             _buildNumberButton('6'),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildNumberButton('7'),
//             _buildNumberButton('8'),
//             _buildNumberButton('9'),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildActionButton('',Icons.clear,clearPin),
//             _buildNumberButton('0'),
//             _buildActionButton('',Icons.backspace, deleteDigit),
//           ],
//         ),
//       ],
//     );
//   }
//   // ignore: unused_element
//   String _generateUnderlineText() {
//     return '_ ' * (6 - pin.length);
//   }
//   Widget _buildNumberButton(String digit) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(
//         onPressed: () => addDigit(digit),
//         //child: Text('$digit\n$word', textAlign: TextAlign.center),
//         child: Text(
//           digit,
//           style: TextStyle(fontSize: 20.0),
//         ),
//       ),
//     );
//   } 
//   Widget _buildActionButton(String label, IconData icon, VoidCallback onPressed) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton.icon(
//         onPressed: onPressed,
//         icon: Icon(icon),
//         label: Text(label),
//       ),
//     );
//   }
// }



