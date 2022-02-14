import 'package:flutter/material.dart';

import './src/screens/login/login_screen.dart';
import './src/screens/home/home_screen.dart';
import './src/utils/colors.dart' as utils;

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
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: utils.Colors.uberCloneColor,
        ),
        primarySwatch: Colors.grey,
        textTheme: Theme.of(context).textTheme.copyWith(
              subtitle1: const TextStyle(
                color: Colors.black,
              ),
            ),
      ),
      routes: {
        'home': (BuildContext ctx) => HomeScreen(),
        'login': (BuildContext ctx) => LoginScreen(),
      },
    );
  }
}
