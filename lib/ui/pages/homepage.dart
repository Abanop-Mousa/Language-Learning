import 'package:flutter/material.dart';
import 'package:language_learning/ui/custom/custom_appbar.dart';
import 'package:language_learning/ui/pages/color_screen.dart';
import 'package:language_learning/ui/pages/family_screen.dart';
import 'package:language_learning/ui/pages/number_Screen.dart';
import 'package:language_learning/ui/pages/phrases_screen.dart';


class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Language Learning"),
        body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumberScreen()),
              );
            },
            child: Container(
              
              padding: EdgeInsets.only(
                left: 20,
              ),
              height: 85,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFEF9234) ,
              child: Align(
                child: Text(
                  "Number",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>FamilyScreen()));
            },
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
              ),
              height: 85,
              width: double.infinity,
              color: Color(0xFF558836),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Family Member",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>ColorScreen())
                );
            },
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
              ),
              width: MediaQuery.of(context).size.width,
              height: 85,
              color: Color(0xFF79349F),
              child: Align(
                child: Text(
                  "Colors",
                  style: TextStyle(color: Colors.white),
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>PhrasesScreen())
            );
            },
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
              ),
              width: MediaQuery.of(context).size.width,
              height: 85,
              color: Color(0xFF4FADC7),
              child: Align(
                child: Text(
                  "Phrases",
                  style: TextStyle(color: Colors.white),
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
