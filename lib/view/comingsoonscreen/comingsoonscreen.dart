import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/utils/db.dart';
import 'package:netflixui/view/comingsoonscreen/widgets/newepscreen.dart';

class ComingsoonScreen extends StatefulWidget {
  const ComingsoonScreen({super.key});

  @override
  State<ComingsoonScreen> createState() => _ComingsoonScreenState();
}

class _ComingsoonScreenState extends State<ComingsoonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Clrbase.nblack,
        appBar: AppBar(
          backgroundColor: Clrbase.nblack,
          leading: CircleAvatar(
            radius: 15,
            backgroundColor: Clrbase.nred,
            child: Icon(
              Icons.notifications,
              color: Clrbase.nwhite,
              size: 20,
            ),
          ),
          title: Text(
            "Notifications",
            style:
                TextStyle(color: Clrbase.nwhite, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Container(
            child: ListView.separated(
              itemCount: DbData.epScreendata.length,
              itemBuilder: (context, index) => NewepScreen(
                imageUrl: DbData.epScreendata[index]["imageUrl"].toString(),
                title: DbData.epScreendata[index]["epName"].toString(),
                subtitle: DbData.epScreendata[index]["movieName"].toString(),
                date: DbData.epScreendata[index]["Date"].toString(),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 0,
              ),
            ),
          ),
        ));
  }
}
