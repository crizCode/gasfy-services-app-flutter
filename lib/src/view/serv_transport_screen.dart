import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';
import '../widgets/custom_add_button.dart';
import 'add_sertransport_screen.dart';

class ServTransportScreen extends StatefulWidget {
  @override
  _ServTransportScreenState createState() => _ServTransportScreenState();
}

class _ServTransportScreenState extends State<ServTransportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicio de Transporte'),
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
                      MaterialPageRoute(builder: (context) => const AddSerTransportScreen()),
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