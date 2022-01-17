import 'package:flutter/material.dart';

import './screen/home_screen.dart';

void main() {
  runApp(UberClone());
}

class UberClone extends StatefulWidget {
  const UberClone({Key? key}) : super(key: key);

  @override
  _UberCloneState createState() => _UberCloneState();
}

class _UberCloneState extends State<UberClone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Clone',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext ctx) => HomeScreen(),
      },
    );
  }
}
