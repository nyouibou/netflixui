import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';

class Upcomingscreen extends StatelessWidget {
  const Upcomingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Clrbase.nred,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/474x/71/e7/23/71e723929dc2748977c5c58272db2957.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
