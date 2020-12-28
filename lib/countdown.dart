// import 'package:flutter/material.dart';
// import 'package:otp_count_down/otp_count_down.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String _countDown;
//   OTPCountDown _otpCountDown;
//   final int _otpTimeInMS = 1000 * 5 * 60;

//   @override
//   void initState() {
//     _startCountDown();
//     super.initState();
//   }

//   void _startCountDown() {
//     _otpCountDown = OTPCountDown.startOTPTimer(
//       timeInMS: _otpTimeInMS,
//       currentCountDown: (String countDown) {
//         _countDown = countDown;
//         setState(() {});
//       },
//       onFinish: () {
//         print("Count down finished!");
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text("OTP Count Down"),
//       ),
//       body: Center(
//         child: Text(
//           _countDown,
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: MediaQuery.of(context).size.height * 0.04,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _otpCountDown.cancelTimer();
//     super.dispose();
//   }
// }
