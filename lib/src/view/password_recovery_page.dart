import 'package:flutter/material.dart';

import '../widgets/custom_button_main.dart';
import '../widgets/custom_text_field.dart';
import 'main_page.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            const Text(
              'Recuperar tu cuenta',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32.0),
            const Text(
              'Ingresa tu correo electrónico.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 32.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CustomTextField(
                labelText: 'Correo electrónico',
                obscureText: true,
              ),
            ),
            const SizedBox(height: 32.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CustomButtonMain(
                buttonText: 'REGISTRARSE',
                onPressed: () {
                  // Navegar a la pantalla principal (MainPage)
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}