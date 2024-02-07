import 'package:flutter/material.dart';
import 'package:netflixui/utils/colorsdb.dart';
import 'package:netflixui/utils/db.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clrbase.nblack,
      appBar: AppBar(
        backgroundColor: Clrbase.nblack,
        title: Image.asset(
          "assets/logos_netflix.png",
          height: 60,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.edit,
            color: Clrbase.nwhite,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: DbData.usernameImages.length + 1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                    image: DecorationImage(
                        image:
                            AssetImage(DbData.usernameImages[index]["image"]!),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                DbData.usernameImages[index]["name"]!,
                style: TextStyle(color: Clrbase.nwhite),
              )
            ],
          ),
        ),
      ),
    );
  }
}
