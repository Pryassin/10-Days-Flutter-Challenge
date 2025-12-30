import 'package:app_1/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto', // Assuming default font or you can add one
      ),
      home: const LoginScreen(),
    );
  }
}
