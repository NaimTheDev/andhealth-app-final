import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/auth/auth_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  void signOut(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue, // You can change this color as needed
        elevation: 4, // Adds a shadow under the app bar
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Add functionality for the settings button here
              print('Settings button pressed');
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => signOut(context),
          )
        ],
      ),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}