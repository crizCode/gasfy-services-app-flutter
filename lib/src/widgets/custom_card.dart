import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;

  const CustomCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          ListTile(
            title: Text('Nombre:'),
          ),
          Divider(),
          ListTile(
            title: Text('Descripción:'),
          ),
        ],
      ),
    );
  }
}