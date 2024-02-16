// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clrbase.nblack,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            " Smart Dowmloads",
            style: TextStyle(color: Clrbase.nwt, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            " Introducing Downloads For You",
            style: TextStyle(
                fontSize: 19.63,
                color: Clrbase.nwt,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,  id ut ipsum aliquam  enim non posuere pulvinar diam.",
            style: TextStyle(color: Clrbase.nwt, fontSize: 10.78),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundColor: Clrbase.ngrey,
                    radius: 100,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 353,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "SETUP",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Find Something to Download",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
