import 'package:flutter/material.dart';
import 'package:language_learning/models/color.dart';
import 'package:language_learning/ui/custom/custom_appbar.dart';
import 'package:language_learning/ui/custom/custom_container.dart';

class ColorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Colors"),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomContainer(
            color: Color(0xFF79349F),
            englishName: colorList[index].englishName,
            jabaniesName: colorList[index].jabaniesName,
            image: colorList[index].image,
            music: colorList[index].music,
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
