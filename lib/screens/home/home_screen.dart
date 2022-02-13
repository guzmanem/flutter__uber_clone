import 'package:flutter/material.dart';

import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black,
                  Colors.black87,
                ]),
          ),
          child: Column(
            children: [
              bannerTypeUser(context),
              const SizedBox(height: 30),
              textTypeUser('SELECCIONA TU ROL'),
              const SizedBox(height: 10),
              iconTypeUser(context, Icons.person),
              const SizedBox(height: 10),
              textTypeUser('Cliente'),
              const SizedBox(height: 10),
              iconTypeUser(context, Icons.person_pin_rounded),
              const SizedBox(height: 10),
              textTypeUser('Pasajero')
            ],
          ),
        ),
      ),
    );
  }
}

Widget bannerTypeUser(BuildContext context) {
  return ClipPath(
    clipper: DiagonalPathClipperTwo(),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.3,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(
            Icons.bus_alert,
            size: 100,
          ),
          Text('Fácil y Rápido'),
        ],
      ),
    ),
  );
}

Widget iconTypeUser(BuildContext context, IconData icon) {
  return GestureDetector(
    onTap: () {
      goToLogin(context);
    },
    child: Icon(
      icon,
      size: 150,
      color: Colors.white,
    ),
  );
}

Widget textTypeUser(String typeUser) {
  return Text(
    typeUser,
    style: const TextStyle(
      color: Colors.white,
    ),
  );
}

void goToLogin(BuildContext context) {
  Navigator.of(context).pushNamed('login');
}
