import 'package:flutter/material.dart';
import 'package:shared_pref_demo/screens/home_page.dart';

void main() {
  runApp(const SharedPrefApp());
}

class SharedPrefApp extends StatelessWidget {
  const SharedPrefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      );
  }
}