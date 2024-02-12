import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';

class CustomMovieCards extends StatelessWidget {
  const CustomMovieCards({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style:
                TextStyle(color: Clrbase.nwhite, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
