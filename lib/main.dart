import 'package:andhealthchat/firebase_options.dart';
import 'package:andhealthchat/pages/login_page.dart';
import 'package:andhealthchat/services/auth/auth_gate.dart';
import 'package:andhealthchat/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //test
  runApp(
    ChangeNotifierProvider(
    create: (context) => AuthService(),
    child: const MainApp(),
    
    ));
    //const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthGate(),
    );
  }
}
