import 'package:flutter/material.dart';
import 'package:language_learning/models/numbers.dart';
import 'package:language_learning/ui/custom/custom_appbar.dart';
import 'package:language_learning/ui/custom/custom_container.dart';

class NumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Numbers"),
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomContainer(
            color: Color(0xFFEF9234),
            englishName: numberList[index].englishName,
            jabaniesName: numberList[index].jabaniesName,
            image: numberList[index].image,
            music: numberList[index].music,
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
