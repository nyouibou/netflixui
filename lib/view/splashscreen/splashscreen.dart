import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/view/homescreen/homescreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homescreen()));
    });
  }

  navigation() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clrbase.nblack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logos_netflix.png"),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: Clrbase.nred,
            ),
          ],
        ),
      ),
    );
  }
}
