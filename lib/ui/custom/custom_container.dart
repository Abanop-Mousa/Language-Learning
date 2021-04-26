import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String image;
  final String jabaniesName;
  final String englishName;
  final String music;
  final Color color;

  CustomContainer(
      {this.image,
      this.jabaniesName,
      this.englishName,
      this.music,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Color(0xFFFFF6DC),
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  jabaniesName,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  englishName,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          // SizedBox(
          //   width: 80,
          // ),
          Spacer(),
          IconButton(
              icon: Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                AudioPlayer player = AudioPlayer();
                player.play(music);
              }),
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 10),
          //     child: Container(
          //       child: IconButton(
          //           icon: Icon(
          //             Icons.play_arrow_rounded,
          //             color: Colors.white,
          //           ),
          //           onPressed: () {
          //             AudioCache player = AudioCache();
          //             player.play(music);
          //           }),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
