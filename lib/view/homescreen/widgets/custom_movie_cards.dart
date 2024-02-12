import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';

class CustomMovieCards extends StatelessWidget {
  const CustomMovieCards({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Clrbase.nwhite,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: 100,
                        color: Clrbase.nred,
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
