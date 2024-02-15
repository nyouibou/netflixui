import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/utils/db.dart';
import 'package:netflixui/view/comingsoonscreen/widgets/newepscreen.dart';
import 'package:netflixui/view/comingsoonscreen/widgets/upcomingmovies.dart';

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
        leading: Center(
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Clrbase.nred,
            child: Icon(
              Icons.notifications,
              color: Clrbase.nwhite,
            ),
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Clrbase.nwhite),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Clrbase.ngrey,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: DbData.epScreendata.length,
                  itemBuilder: (context, index) => Upcomingscreen(),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
