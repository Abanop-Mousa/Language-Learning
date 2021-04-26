import 'package:flutter/material.dart';
import 'package:language_learning/ui/custom/custom_appbar.dart';
import 'package:language_learning/models/family_member.dart';
import 'package:language_learning/ui/custom/custom_container.dart';

class FamilyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Family Members"),
      body: ListView.builder(
        itemCount: familyList.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomContainer(
            color: Color(0xFF558836),
            englishName: familyList[index].englishName,
            jabaniesName: familyList[index].jabaniesName,
            image: familyList[index].image,
            music: familyList[index].music,
          );
          // return ListTile(
          //   title: Text(numberList[index].jabaniesName,),
          //   subtitle: Text(numberList[index].englishName) ,
          // ) ;
        },
      ),
    );
  }
}
