import 'package:app_gasfy/src/view/serv_plumbing_screen.dart';
import 'package:app_gasfy/src/view/serv_transport_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../utils/global.colors.dart';
import 'login_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final bool _isLoggedIn = true; // Define si el usuario está logueado o no

  // Función para navegar a una pantalla
  void _navigateToScreen(Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  // Función para cerrar sesión y navegar a la pantalla de inicio de sesión
  void _logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  // Widget para la cabecera de la aplicación
  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        title: const Text(
          'Pagina Principal',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
    );
  }

  // Widget para el menú lateral
  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.cyan,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Usuario',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'usuario@example.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Gasfiteria'),
            onTap: () {
              _navigateToScreen(ServPlumbingScreen());
            },
          ),
          ListTile(
            title: const Text('Mudanza'),
            onTap: () {
              _navigateToScreen(ServTransportScreen());
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Cerrar sesión'),
            onTap: _logout,
          ),
        ],
      ),
    );
  }

  // Widget para el contenido principal de la aplicación
  Widget _buildMainContent() {
    return Center(
      child: Column(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ListTile(
                  title: Text('Nombre:'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        drawer: _buildDrawer(),
        body: _buildMainContent(),
    );
  }
}
