// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/utils/db.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Clrbase.nblack,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 100,
                  child: ListView.separated(
                    itemCount: DbData.usernameImages.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 74,
                      width: 74,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  DbData.usernameImages[index]["image"]!))),
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                      height: 5,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Clrbase.nwt,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Manage Profiles",
                      style: TextStyle(
                        color: Clrbase.nwt,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Clrbase.ngrey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.mode_comment,
                            color: Clrbase.nwhite,
                            size: 26,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Tell friends about Netflix.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Clrbase.nwhite,
                                fontSize: 19.63),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,  id ut ipsum aliquam  enim non posuere pulvinar diam.",
                              style: TextStyle(
                                  color: Clrbase.nwt, fontSize: 10.78),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 10,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            height: 43,
                            width: 265,
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Clrbase.nwhite,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Copy Link",
                                style: TextStyle(
                                    color: Clrbase.nblack,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/wa.png")),
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/fb.png")),
                                  color: Color(0xff395185),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage("assets/gmail.png")),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
