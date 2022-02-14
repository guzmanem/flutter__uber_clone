import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../utils/colors.dart' as utils;
import '../../widgets/button_app.dart';
import './login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final LoginController _cons = LoginController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _cons.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            bannerTypeUser(),
            _textDescription(),
            _textLogin(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _textDontHaveAccount(),
          ],
        ),
      ),
    );
  }

  Widget _textDontHaveAccount() {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: const Text(
        'No tienes cuenta?',
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 25,
      ),
      child: ButtonApp(
        onPressed: _cons.login,
        text: 'Iniciar Sesión',
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: TextField(
        controller: _cons.emailController,
        decoration: const InputDecoration(
          hintText: 'correo@gmail.com',
          labelText: 'Correo electrónico',
          suffixIcon: Icon(
            Icons.email_outlined,
            color: utils.Colors.uberCloneColor,
          ),
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      child: TextField(
        controller: _cons.passwordController,
        obscureText: true,
        decoration: const InputDecoration(
          labelText: 'Contraseña',
          suffixIcon: Icon(
            Icons.lock_open_outlined,
            color: utils.Colors.uberCloneColor,
          ),
        ),
      ),
    );
  }

  Widget _textDescription() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: const Text(
        'Continua con tu',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 24,
        ),
      ),
    );
  }

  Widget _textLogin() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 0,
      ),
      child: const Text(
        'Login',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
      ),
    );
  }

  Widget bannerTypeUser() {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.22,
        color: utils.Colors.uberCloneColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(
              Icons.bus_alert,
              size: 100,
            ),
            Text(
              'Fácil y Rápido',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
