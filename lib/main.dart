import 'package:flutter/material.dart';
import 'pages/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //TODO: to change text or text field font colors go to their respective folders
      //TODO: to change the pages background colors go to their respective folders
      home: LoginPage(),
    );
  }
}
