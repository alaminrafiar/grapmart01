import 'package:flutter/material.dart';
import 'package:grapmart01/widget/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GrapMart",
      home: Home(),
    );
  }
}
