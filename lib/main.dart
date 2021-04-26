import 'package:flutter/material.dart';
import 'package:language_learning/ui/pages/homepage.dart';

void main() => runApp(Talk());

class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talk App',
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
