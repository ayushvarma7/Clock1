import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
//            title: Text(
//              'Date ${DateTime.now().toString().substring(0, 10)}\n Time ${DateTime.now().toString().substring(10, 19)} ',
//              textAlign: TextAlign.right,
//              style: TextStyle(
//                color: Colors.orange,
//              ),
//            ),
              ),
          body: ClockDemo(),
        ),
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF111328),
          scaffoldBackgroundColor: Color(0xFF1D1E33),
        ),
      ),
    );

class ClockDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 80.0,
          width: 390.0,
          color: Colors.red,
          child: Text(
            'Clock',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'BebasNeue',
              color: Colors.yellow,
              fontSize: 48.0,
            ),
          ),
        ),
        FlutterAnalogClock(
          dateTime: DateTime.now(),
          dialPlateColor: Colors.white,
          hourHandColor: Colors.black,
          minuteHandColor: Colors.black,
          secondHandColor: Colors.black,
          numberColor: Colors.black,
          borderColor: Colors.black,
          tickColor: Colors.black,
          centerPointColor: Colors.black,
          showBorder: true,
          showTicks: true,
          showMinuteHand: true,
          showSecondHand: true,
          showNumber: true,
          borderWidth: 10.0,
          hourNumberScale: .10,
          hourNumbers: [
            'I',
            'II',
            'III',
            'IV',
            'V',
            'VI',
            'VII',
            'VIII',
            'IX',
            'X',
            'XI',
            'XII'
          ],
          isLive: true,
          width: 250.0,
          height: 250.0,
          decoration: const BoxDecoration(),
          //child: Text('Current Time: ' + DateTime.now().toString()),
        ),
        Container(
          height: 180.0,
          width: 390.0,
          color: Colors.red,
          child: Text(
            'Date: ${DateTime.now().toString().substring(0, 10)}\nTime: ${DateTime.now().toString().substring(10, 19)} ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'BebasNeue',
              color: Colors.yellow,
              fontSize: 48.0,
            ),
          ),
        ),
      ],
    );
  }
}

//
//class Clock extends StatefulWidget {
//  @override
//  _ClockState createState() => _ClockState();
//}
//
//class _ClockState extends State<Clock> {
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      crossAxisAlignment: CrossAxisAlignment.stretch,
//      children: <Widget>[
//        Container(
//          height: 80.0,
//          width: 390.0,
//          color: Colors.red,
//          child: Text(
//            'Clock',
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              fontFamily: 'BebasNeue',
//              color: Colors.yellow,
//              fontSize: 48.0,
//            ),
//          ),
//        ),
//        SizedBox(
//          height: 50.0,
//        ),
//        Padding(
//          padding: const EdgeInsets.symmetric(vertical: 15.0),
//          child: Container(
//            decoration: BoxDecoration(
//              border: Border.all(width: 5.0, color: Colors.orangeAccent),
//              shape: BoxShape.circle,
//              color: Colors.red,
//            ),
//
//            //color: Color(0xFF1D1E33),
//            height: 400.0,
//            width: double.infinity,
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.symmetric(vertical: 28.0),
//          child: Container(
//            height: 120.0,
//            width: 400.0,
//            color: Colors.red,
//            child: Text(
//              'Reset',
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                  fontFamily: 'BebasNeue',
//                  color: Colors.yellow,
//                  fontSize: 40.0),
//            ),
//          ),
//        ),
//      ],
//    );
//  }
//}
