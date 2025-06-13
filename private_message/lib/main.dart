import 'package:flutter/material.dart';
import 'package:private_message/login_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginView());
  }
}
