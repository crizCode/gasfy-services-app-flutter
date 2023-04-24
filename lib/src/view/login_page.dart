import 'package:app_gasfy/src/view/password_recovery_page.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:app_gasfy/src/view/main_page.dart';
import 'package:app_gasfy/src/view/user_registration_page.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button_main.dart';
import '../utils/global.colors.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: Implement login page
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png', //image path
                width: 220,
                height: 150,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomTextField(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomTextField(
                  labelText: 'Password',
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomButtonMain(
                  buttonText: 'INGRESAR',
                  onPressed: () {
                    // Navegar a la pantalla principal (MainPage)
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PasswordRecoveryPage()),
                  );
                },
                child: Text(
                  '¿Olvidaste Contraseña?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomButtonMain(
                  buttonText: 'REGISTRARSE',
                  onPressed: () {
                    // Navegar a la pantalla registro
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const UserRegistrationPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
// Aquí irán las variables y métodos necesarios para la página de login
}