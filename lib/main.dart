import 'package:flutter/material.dart';
import 'package:ticket_app/pages/bottom_bar.dart';
import 'package:ticket_app/utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Style.primaryColor),
      home: const MyHomePage(),
    );
  }
}
