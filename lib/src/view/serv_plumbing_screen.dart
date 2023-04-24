
import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';
import '../widgets/custom_add_button.dart';
import 'add_serplumbing_screen.dart';

class ServPlumbingScreen extends StatefulWidget {
  @override
  _ServPlumbingScreenState createState() => _ServPlumbingScreenState();
}

class _ServPlumbingScreenState extends State<ServPlumbingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicio de Gasfiteria'),
      ),
      body: Column(
        children: [
          CustomCard(title: 'Ejemplo'),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomAddButton(
                  onPressed: () {
                    // Navegar a la pantalla registro
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const AddSerPlumbingScreen()),
                    );
                  },
                  icon: Icons.add,
                  backgroundColor: Colors.cyan,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}