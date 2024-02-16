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
        leading: Icon(Icons.notifications, color: Clrbase.nwhite),
        title: Text("Notifications",
            style: TextStyle(color: Clrbase.nwt, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: DbData.epScreendata.length,
                itemBuilder: (context, index) => NewepScreen(
                  imageUrl: DbData.epScreendata[index]["imageUrl"].toString(),
                  title: DbData.epScreendata[index]["epName"].toString(),
                  subtitle: DbData.epScreendata[index]["movieName"].toString(),
                  date: DbData.epScreendata[index]["Date"].toString(),
                ),
              ),
            ),
            // 2nd

            SizedBox(
              height: 20,
            ),
            // 2nd
            ListView.builder(
                itemCount: DbData.notificationMovieList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => UpcomingMovies(
                      title: DbData.notificationMovieList[index]["title"],
                      subtitle: DbData.notificationMovieList[index]["subtitle"],
                      imageurl: DbData.notificationMovieList[index]["imageUrl"],
                      des: DbData.notificationMovieList[index]["description"],
                    ))
          ],
        ),
      ),
    );
  }
}
