import 'package:flutter/material.dart';
import 'package:netflixui/view/homescreen/homescreen.dart';

void main() {
  runApp(Netflix());
}

class Netflix extends StatelessWidget {
  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
    );
  }
}
